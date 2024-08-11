#include <stdio.h>
#include <malloc.h>
#include <string.h>
#include <stdbool.h>

int get_op_mode(int op_code) {
    return op_code / 100;
}

int get_argno_mode(int mode, int arg_no) {
    for (int i = 1; i < arg_no; ++i) {
        mode /= 10;
    }
    return mode % 10;
}

struct Memory {
    int* memory;
    int length;
};

struct Buffer {
    int* data;
    int pos;
    int size;
};

enum IOStatus {
    Pending,
    Ready
};

enum IOStatus read_buffer(struct Buffer* b, int* val) {
    if (b->pos < b->size) {
        *val = b->data[b->pos];
        b->pos++;
        return Ready;
    } else {
        return Pending;
    }
}

enum IOStatus write_buffer(struct Buffer* b, int val) {
    if (b->pos < b->size) {
        b->data[b->pos] = val;
        b->pos++;
        return Ready;
    } else {
        return Pending;
    }
}


int parameter_value(int mode, int pos, struct Memory m){
    int value = m.memory[pos];
    if (mode) {
        return value;
    } else {
        return m.memory[value];
    } 
}

struct IO {
    struct Buffer* input;
    struct Buffer* output;
};

struct State {
    struct Memory m;
    int ip;
    struct IO io;
};

enum IOStatus execute_terminate(struct State* s) {
    s->ip = s->m.length;
    return Ready;
}

enum IOStatus execute_add(struct State* s, int mode) {
    int a_mode = get_argno_mode(mode, 1);
    int b_mode = get_argno_mode(mode, 2);
    int a = parameter_value(a_mode, s->ip + 1, s->m);
    int b = parameter_value(b_mode, s->ip + 2, s->m);
    int res_addr = s->m.memory[s->ip + 3];
    s->m.memory[res_addr] = a + b;
    s->ip += 4;
    return Ready;
}

enum IOStatus execute_mul(struct State* s, int mode) {
    int a_mode = get_argno_mode(mode, 1);
    int b_mode = get_argno_mode(mode, 2);
    int a = parameter_value(a_mode, s->ip + 1, s->m);
    int b = parameter_value(b_mode, s->ip + 2, s->m);
    int res_addr = s->m.memory[s->ip + 3];
    s->m.memory[res_addr] = a * b;
    s->ip += 4;
    return Ready;
}

enum IOStatus execute_read(struct State* s) {
    int read_val = 0;
    if (read_buffer(s->io.input, &read_val) == Pending) {
        return Pending;
    }
    int res_addr = s->m.memory[s->ip + 1];
    s->m.memory[res_addr] = read_val;
    s->ip += 2;
    return Ready;
}

enum IOStatus execute_write(struct State* s, int mode) {
    int value_mode = get_argno_mode(mode, 1);
    int value = parameter_value(value_mode, s->ip + 1, s->m);
    if (write_buffer(s->io.output, value) == Pending) {
        return Pending;
    }
    s->ip += 2;
    return Ready;
}

enum IOStatus execute_jump_if_true(struct State* s, int mode) {
    int cond_mode = get_argno_mode(mode, 1);
    int pos_mode = get_argno_mode(mode, 2);
    int cond = parameter_value(cond_mode, s->ip + 1, s->m);
    int jmp_pos = parameter_value(pos_mode, s->ip + 2, s->m);
    if (cond != 0) {
        s->ip = jmp_pos;
    } else {
        s->ip += 3;
    }
    return Ready;
}

enum IOStatus execute_jump_if_false(struct State* s, int mode) {
    int cond_mode = get_argno_mode(mode, 1);
    int pos_mode = get_argno_mode(mode, 2);
    int cond = parameter_value(cond_mode, s->ip + 1, s->m);
    int jmp_pos = parameter_value(pos_mode, s->ip + 2, s->m);
    if (cond == 0) {
        s->ip = jmp_pos;
    } else {
        s->ip += 3;
    }
    return Ready;
}

enum IOStatus execute_less_than(struct State* s, int mode) {
    int a_mode = get_argno_mode(mode, 1);
    int b_mode = get_argno_mode(mode, 2);
    int a = parameter_value(a_mode, s->ip + 1, s->m);
    int b = parameter_value(b_mode, s->ip + 2, s->m);
    int res_addr = s->m.memory[s->ip + 3];
    s->m.memory[res_addr] = (a < b) ? 1 : 0;
    s->ip += 4;
    return Ready;
}

enum IOStatus execute_equals(struct State* s, int mode) {
    int a_mode = get_argno_mode(mode, 1);
    int b_mode = get_argno_mode(mode, 2);
    int a = parameter_value(a_mode, s->ip + 1, s->m);
    int b = parameter_value(b_mode, s->ip + 2, s->m);
    int res_addr = s->m.memory[s->ip + 3];
    s->m.memory[res_addr] = (a == b) ? 1 : 0;
    s->ip += 4;
    return Ready;
}

enum IOStatus execute(int op, struct State* s) {
    int mode = get_op_mode(op);
    op = op % 100;
    switch (op)
    {
    case 1: return execute_add(s, mode);
    case 2: return execute_mul(s, mode);
    case 3: return execute_read(s);
    case 4: return execute_write(s, mode);
    case 5: return execute_jump_if_true(s, mode);
    case 6: return execute_jump_if_false(s, mode);
    case 7: return execute_less_than(s, mode);
    case 8: return execute_equals(s, mode);
    default: return execute_terminate(s);
    }
}


enum IOStatus run(struct State* s) {
    while (s->ip < s->m.length) {
        int op = s->m.memory[s->ip];
        if (execute(op, s) == Pending) {
            return Pending;
        }
    }
    return Ready;
}

static const int program[] = {
3,8,1001,8,10,8,105,1,0,0,21,38,63,88,97,118,199,280,361,442,99999,3,9,1002,9,3,9,101,2,9,9,1002,9,4,9,4,9,99,3,9,101,3,9,9,102,5,9,9,101,3,9,9,1002,9,3,9,101,3,9,9,4,9,99,3,9,1002,9,2,9,1001,9,3,9,102,3,9,9,101,2,9,9,1002,9,4,9,4,9,99,3,9,102,2,9,9,4,9,99,3,9,102,4,9,9,101,5,9,9,102,2,9,9,101,5,9,9,4,9,99,3,9,1002,9,2,9,4,9,3,9,101,1,9,9,4,9,3,9,102,2,9,9,4,9,3,9,101,1,9,9,4,9,3,9,101,2,9,9,4,9,3,9,1001,9,2,9,4,9,3,9,102,2,9,9,4,9,3,9,102,2,9,9,4,9,3,9,101,1,9,9,4,9,3,9,102,2,9,9,4,9,99,3,9,101,1,9,9,4,9,3,9,102,2,9,9,4,9,3,9,1001,9,2,9,4,9,3,9,1001,9,2,9,4,9,3,9,1001,9,1,9,4,9,3,9,1001,9,1,9,4,9,3,9,1001,9,2,9,4,9,3,9,102,2,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,1001,9,1,9,4,9,99,3,9,1002,9,2,9,4,9,3,9,1002,9,2,9,4,9,3,9,102,2,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,1001,9,1,9,4,9,3,9,102,2,9,9,4,9,3,9,102,2,9,9,4,9,3,9,101,1,9,9,4,9,3,9,102,2,9,9,4,9,3,9,102,2,9,9,4,9,99,3,9,102,2,9,9,4,9,3,9,101,1,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,1002,9,2,9,4,9,3,9,102,2,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,1001,9,2,9,4,9,3,9,101,2,9,9,4,9,3,9,1001,9,2,9,4,9,3,9,101,1,9,9,4,9,99,3,9,101,1,9,9,4,9,3,9,101,1,9,9,4,9,3,9,101,1,9,9,4,9,3,9,102,2,9,9,4,9,3,9,1001,9,1,9,4,9,3,9,1001,9,2,9,4,9,3,9,101,2,9,9,4,9,3,9,102,2,9,9,4,9,3,9,1001,9,1,9,4,9,3,9,1001,9,2,9,4,9,99
};

struct Amplifier {
    struct Memory mem;
    int ip;
};


void init_amplifier(struct Amplifier* a, int phase) {
    a->mem.memory = malloc(sizeof(program));
    memcpy(a->mem.memory, program, sizeof(program));
    a->mem.length = sizeof(program) / sizeof(int);

    struct Buffer input = {
        &phase,
        0,
        1
    };
    struct Buffer output = {
        NULL, 0, 0
    };

    struct State s = {
        a->mem,
        0,
        (struct IO) {
            &input,
            &output
        }
    };

    run(&s);
    a->ip = s.ip;
}

void deinit_amplifier(struct Amplifier* a) {
    free(a->mem.memory);
}

int run_amplifiers(int* phases, int phases_n) {
    printf("RUN AMPLIFIERS\n");
    struct Amplifier* amps = malloc(sizeof(struct Amplifier) * phases_n);
    
    for (int i = 0; i < phases_n; ++i) {
        init_amplifier(amps + i, phases[i]);
    }

    int signal = 0;
    bool stop = false;
    int loop_idx = 0;
    while (!stop) {
        printf("try loop %d\n", loop_idx);
        ++loop_idx;
        for (int i = 0; i < phases_n; ++i) {
            int res_signal = 0;
            struct Buffer input = {
                &signal,
                0, 1
            };
            struct Buffer output = {
                &res_signal,
                0, 1
            };
            struct State s = {
                amps[i].mem,
                amps[i].ip,
                (struct IO) {
                    &input,
                    &output
                }
            };
            enum IOStatus status = run(&s);
            amps[i].ip = s.ip;
            signal = res_signal;
            if (status == Ready && i + 1 == phases_n) {
                stop = true;
            }
        }
    }

    for (int i = 0; i < phases_n; ++i) {
        deinit_amplifier(amps + i);
    }

    return signal;
}

void swap_vals(int* a, int *b) {
    int c = *a;
    *a = *b;
    *b = c;
}

int for_all_permutations_do(int* phases, int phases_n, int picked) {
    if (picked == phases_n) {
        return run_amplifiers(phases, phases_n);
    }
    int max_val = 0;
    for (int i = picked; i < phases_n; ++i) {
        swap_vals(phases + picked, phases + i);
        int val = for_all_permutations_do(phases, phases_n, picked + 1);
        if (val > max_val) max_val = val;
        swap_vals(phases + picked, phases + i);
    }
    return max_val;
}

int main() {
    int phases[5] = {5, 6, 7 ,8 ,9};

    int answer = for_all_permutations_do(phases, 5, 0);

    printf("solution: %d\n", answer);
    return 0;
}