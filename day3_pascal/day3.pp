{$H+}

Uses sysutils, math;

const 
   NO_INTERSECTION = 99999999;

function take_next(var s: string): string; 
var idx: Int32;
    str_len: Int32;
begin
    str_len := length(s);
    idx := 0;
    while idx < str_len do
    begin
        inc(idx);
        if s[idx] = ',' then begin
            take_next := copy(s, 1, idx - 1);
            delete(s, 1, idx);
            exit;
        end;
    end;
    take_next := s;
    s := '';
end;

type Point = record 
    x, y: Int32;
end;

// Canonical name 
type Otrezok = record 
    start_point: Point;
    verical: boolean;
    length: Int32; 
end;

type SegmentsBuffer = array[0..1000] of Otrezok;

function parse_token(s: string; var start: Point): Otrezok; 
var
    direction: char;
    new_start: Point;
    is_vertical: boolean;
    raw_len: Int32; 
begin
    direction := s[1];
    delete(s, 1, 1);
    new_start := start;
    raw_len := StrToInt(s);

    case (direction) of 
        'R': begin is_vertical := false; raw_len := raw_len * 1;   new_start.x := new_start.x + raw_len;  end;
        'L': begin is_vertical := false; raw_len := raw_len * -1;  new_start.x := new_start.x + raw_len;  end;
        'U': begin is_vertical := true;  raw_len := raw_len * 1;   new_start.y := new_start.y + raw_len;  end;
        'D': begin is_vertical := true;  raw_len := raw_len * -1;  new_start.y := new_start.y + raw_len;  end;
    end;

    parse_token.verical := is_vertical;
    parse_token.length := raw_len;
    parse_token.start_point := start;
    start := new_start;
end;

procedure setPos(var pos: Point; nx, ny: Int32);
begin
    with pos do
    begin
       x := nx;
       y := ny;
    end;
end;

function parse_line(var s: string; var parsed_segments: SegmentsBuffer): Int32;
var 
    token: string;
    pos: Point;
begin
    parse_line := 0;
    setPos(pos, 0, 0);

    while length(s) <> 0 do
    begin 
        token := take_next(s);
        parsed_segments[parse_line] := parse_token(token, pos);
        inc(parse_line);
    end;
end;

procedure print_segment(seg: Otrezok);
begin
    with seg do
    begin
       writeln('x: ', start_point.x, ' y: ', start_point.y, ' is vertical? ', verical, ' len', length); 
    end;
end;

procedure print_line_points(line: SegmentsBuffer; len: Int32); 
var
   idx: Int32;
begin
   writeln('print line!');
   for idx := 0 to len - 1 do 
   begin
       print_segment(line[idx]); 
   end;
end;

function inside(x, a, b: Int32) : boolean;
begin
   inside := (x >= min(a, b)) and (x <= max(a, b));
end;

function intersect_1D(a, b, c, d: Int32): Int32;
var aa, bb, cc, dd: Int32;
begin
   if inside(a, c, d) or inside(b, c, d) then 
   begin
      aa := min(a, b);
      bb := max(a, b);
      cc := min(c, d);
      dd := max(c, d);
      intersect_1D := min(abs(min(bb, dd)),
                            abs(max(aa, cc)));
   end
   else 
      intersect_1D := NO_INTERSECTION;
end;



// a -- y: const
// b -- x: const
function intersect_2D(a, b: Otrezok): Int32;
var aa, bb, cc, dd: Int32;
    x, y: Int32;
begin 
  aa := a.start_point.x;
  bb := a.start_point.x + a.length;

  cc := b.start_point.y;
  dd := b.start_point.y + b.length;
    
   
  x := b.start_point.x;
  y := a.start_point.y;
  
  if inside(x, aa, bb) and inside(y, cc, dd) then
     intersect_2D := abs(x) + abs(y)
  else intersect_2D := NO_INTERSECTION;

end;

function intersect_1D_steps(a, b, c, d: Int32): Int32;
var aa, bb, cc, dd, pos: Int32;
begin
    aa := min(a, b);
    bb := max(a, b);
    cc := min(c, d);
    dd := max(c, d);

    pos := min(bb, dd);
    intersect_1D_steps:= abs(pos - a) + abs(pos - c);
end;

// a -- y: const
// b -- x: const
function intersect_2D_steps(a, b: Otrezok): Int32;
var    x, y: Int32;
begin    
  x := b.start_point.x;
  y := a.start_point.y;
  
  intersect_2D_steps := abs(x - a.start_point.x) + abs(y - b.start_point.y);
end;

function count_intersect_steps(a, b: Otrezok): Int32; 
begin
  if a.verical = b.verical then
  begin
     if a.verical then
        count_intersect_steps := intersect_1D_steps(a.start_point.y, a.start_point.y + a.length, b.start_point.y, b.start_point.y + b.length)
     else 
        count_intersect_steps := intersect_1D_steps(a.start_point.x, a.start_point.x + a.length, b.start_point.x, b.start_point.x + b.length);
     exit;   
  end;

  if a.verical then 
     count_intersect_steps := intersect_2D_steps(b, a)
  else
     count_intersect_steps := intersect_2D_steps(a, b);
end;

function try_intersect(a, b: Otrezok): Int32;
begin
if a.verical = b.verical then 
begin 
   if a.verical then 
   begin
      if a.start_point.x <> b.start_point.x then
      begin
         try_intersect := NO_INTERSECTION;
         exit; 
      end;
      try_intersect := intersect_1D(
                         a.start_point.y, a.start_point.y + a.length,
                         b.start_point.y, b.start_point.y + b.length);
      if try_intersect = NO_INTERSECTION then 
      begin
         exit; 
      end;
      try_intersect := try_intersect + abs(a.start_point.x);
      exit;
   end
   else 
   begin 
    if a.start_point.y <> b.start_point.y then
      begin
         try_intersect := NO_INTERSECTION;
         exit; 
      end;
      try_intersect:= intersect_1D(a.start_point.x, a.start_point.x + a.length,
                         b.start_point.x, b.start_point.x + b.length);
      if try_intersect = NO_INTERSECTION then exit;
      try_intersect := try_intersect + abs(a.start_point.y);
      exit;
   end;
end;

   if a.verical then 
      try_intersect := intersect_2D(b, a)
   else
      try_intersect := intersect_2D(a, b);
end;

var 
    first_line_raw, second_line_raw: string;
    first_line, second_line: SegmentsBuffer;
    first_line_len, second_line_len: Int32;
    answer: Int32;
    i,j: Int32;
    current_intersecion_dist: Int32;
    count_first_steps, count_second_steps: Int32;
begin
    readln(first_line_raw);
    readln(second_line_raw);

    first_line_len := parse_line(first_line_raw, first_line);
    second_line_len := parse_line(second_line_raw, second_line);

    writeln('Echo');
    writeln('first: ', first_line_len);
    writeln('second: ', second_line_len);

    print_line_points(first_line, first_line_len);
    print_line_points(second_line, second_line_len);

    answer := NO_INTERSECTION; 

    count_first_steps := 0;
    for i:=0 to first_line_len - 1 do
    begin
        count_second_steps := 0;
        for j:=0 to second_line_len - 1 do
        begin
            current_intersecion_dist := try_intersect(
                first_line[i], second_line[j]
            );

            if (current_intersecion_dist <> 0) and (current_intersecion_dist <> NO_INTERSECTION) then
            begin
                answer := min(answer,
                             count_second_steps + count_first_steps + count_intersect_steps(first_line[i], second_line[j]));
            end;

            count_second_steps := count_second_steps + abs(second_line[j].length);
        end;
        count_first_steps := count_first_steps + abs(first_line[i].length);
    end;

    writeln('result: ', answer);
end.