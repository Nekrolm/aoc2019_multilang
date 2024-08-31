//! By convention, main.zig is where your main function lives in the case that
//! you are building an executable. If you are making a library, the convention
//! is to delete this file and start with root.zig instead.
const std = @import("std");

const input_data = @embedFile("input.txt");

const HashMap = std.hash_map.StringHashMap;
const Array = std.ArrayList;

const Source = struct {
    count: usize,
    resource: []const u8,
};

const Rule = struct {
    production: usize,
    requirements: []const Source,
};

const ParseError = error{NotEnoughTokes};

const RulesBuffer = struct {
    buffer: Array(Array(Source)),

    fn init(alloc: std.mem.Allocator) RulesBuffer {
        return .{ .buffer = Array(Array(Source)).init(alloc) };
    }

    fn deinit(self: RulesBuffer) void {
        const arrays: []Array(Source) = self.buffer.items;
        for (arrays) |item| {
            item.deinit();
        }
    }

    fn make_new(self: *RulesBuffer) !*Array(Source) {
        var new_array = Array(Source).init(self.buffer.allocator);
        errdefer new_array.deinit();
        try self.buffer.append(new_array);
        return &self.buffer.items[self.buffer.items.len - 1];
        // return new_array;
    }
};

fn parse_item(item: []const u8) !Source {
    var item_split = std.mem.splitSequence(u8, item, " ");
    const count = item_split.next() orelse return ParseError.NotEnoughTokes;
    const name = item_split.next() orelse return ParseError.NotEnoughTokes;

    return .{
        .count = try std.fmt.parseInt(usize, count, 10),
        .resource = name,
    };
}

fn parse_line(line: []const u8, rules_buffer: *RulesBuffer, rules: *HashMap(Rule)) !void {
    var map_split = std.mem.splitSequence(u8, line, " => ");
    const requirements = map_split.next() orelse return ParseError.NotEnoughTokes;
    const target = map_split.next() orelse return ParseError.NotEnoughTokes;

    const parsed_target = try parse_item(target);

    var new_rule = try rules_buffer.make_new();
    var requirements_iter = std.mem.splitSequence(u8, requirements, ", ");

    while (requirements_iter.next()) |req| {
        const new_source = try parse_item(req);
        try new_rule.append(new_source);
    }

    try rules.put(parsed_target.resource, .{ .production = parsed_target.count, .requirements = new_rule.items });
}

fn parse_input(input: []const u8, rules_buffer: *RulesBuffer, rules: *HashMap(Rule)) !void {
    var lines = std.mem.splitScalar(u8, input, '\n');
    while (lines.next()) |line| {
        if (line.len == 0) {
            break;
        }
        try parse_line(line, rules_buffer, rules);
    }
}

// rules: HashMap<String, {
//     Production: Usize,
//     Requirements: [(String, Usize)]
// }

// needed: HashMap<String, Usize>
// warehouse: HashMap<String, Usize>

// needed[FUEL] = 1

// while needed has non_zero entry:
//     let target = non_zero_entry.key
//     let count = non_zero_entry.value

//     let production = rules[target].Production
//     let requirements = rules[target].Requirements

//     let need_to_run_times = (count + production - 1) / production;

//     let over_produce = need_to_run_times * production - count;
//     if over_produce > 0:
//         warehouse[target] = over_produce

//     produce(need_to_run_times, requirements)
//     needed[target] = 0

fn find_next_non_zero(needed: *HashMap(usize)) ?Source {
    var iter = needed.iterator();
    while (iter.next()) |entry| {
        if (std.mem.eql(u8, "ORE", entry.key_ptr.*)) {
            continue;
        }
        if (entry.value_ptr.* > 0) {
            return .{
                .resource = entry.key_ptr.*,
                .count = entry.value_ptr.*,
            };
        }
    }
    return null;
}

fn count_ore_for_fuel(alloc: std.mem.Allocator, rules: HashMap(Rule), fuel: usize) !usize {
    var needed = HashMap(usize).init(alloc);
    defer needed.deinit();
    var warehouse = HashMap(usize).init(alloc);
    defer warehouse.deinit();

    try needed.put("FUEL", fuel);
    try solve(rules, &needed, &warehouse);

    const ore_entry = try needed.getOrPutValue("ORE", 0);
    return ore_entry.value_ptr.*;
}

fn solve(rules: HashMap(Rule), needed: *HashMap(usize), warehouse: *HashMap(usize)) !void {
    while (find_next_non_zero(needed)) |next_needed| {
        const producing_rule = rules.get(next_needed.resource) orelse return;
        const production = producing_rule.production;
        const requirements = producing_rule.requirements;
        const times_to_apply_production = (next_needed.count + production - 1) / production;
        const overproduction = times_to_apply_production * production - next_needed.count;

        for (requirements) |req| {
            var need_count = req.count * times_to_apply_production;
            const need_res = req.resource;
            if (warehouse.getEntry(need_res)) |warehouse_entry| {
                const spend_resources = @min(need_count, warehouse_entry.value_ptr.*);
                need_count -= spend_resources;
                warehouse_entry.value_ptr.* -= spend_resources;
            }
            if (need_count > 0) {
                const needed_entry = try needed.getOrPutValue(need_res, 0);
                needed_entry.value_ptr.* += need_count;
            }
        }

        const warehouse_entry = try warehouse.getOrPutValue(next_needed.resource, 0);
        warehouse_entry.value_ptr.* += overproduction;
        try needed.put(next_needed.resource, 0);
    }
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const alloc = gpa.allocator();
    var rules = HashMap(Rule).init(alloc);
    defer rules.deinit();
    var buffer = RulesBuffer.init(alloc);
    defer buffer.deinit();
    try parse_input(input_data, &buffer, &rules);

    const HAVE_ORE: usize = 1000000000000;

    var fuel_left: usize = 1;
    var fuel_right: usize = 10000000;
    var answer: usize = 0;

    while (fuel_left <= fuel_right) {
        const mid = fuel_left + (fuel_right - fuel_left) / 2;
        const need_ore = try count_ore_for_fuel(alloc, rules, mid);
        if (need_ore <= HAVE_ORE) {
            answer = mid;
            fuel_left = mid + 1;
        } else {
            fuel_right = mid - 1;
        }
    }

    std.debug.print("needed ore for one={}\n", .{try count_ore_for_fuel(alloc, rules, 1)});
    std.debug.print("can produce for trillion={}\n", .{answer});
}
