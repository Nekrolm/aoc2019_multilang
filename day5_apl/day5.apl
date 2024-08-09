
get_op_mode ← ⌊∘{⍵÷100}

get_argno_mode ← { 10|(⌊(⍵ ÷ (10 * (⍺ - 1)))) } 

⍝ xxx99
execute_terminate ← {
    (ip memory io) ← ⍵ 
    mem_len ← ≢memory
    new_pos ← mem_len + 1
    new_pos(memory)(io)
}

parameter_value ← {
    (pos memory) ← ⍵
    value ← memory[pos]
    ⍺=1: value ⋄ memory[(value + 1)]
}

⍝ xxx01 a b  
execute_add ← {
    (cur_pos memory io) ← ⍵
    mode ← ⍺
    a_mode ← 1 get_argno_mode mode
    b_mode ← 2 get_argno_mode mode

    a ← a_mode parameter_value (cur_pos+1)(memory)
    b ← b_mode parameter_value (cur_pos+2)(memory)
    
    res_addr ← memory[(cur_pos + 3)] + 1
    memory[res_addr] ← a + b
    new_pos ← cur_pos + 4
    new_pos(memory)(io)
} 

⍝ xxx02 a b  
execute_mul ← {
    (cur_pos memory io) ← ⍵
    mode ← ⍺
    a_mode ← 1 get_argno_mode mode
    b_mode ← 2 get_argno_mode mode

    a ← a_mode parameter_value (cur_pos+1)(memory)
    b ← b_mode parameter_value (cur_pos+2)(memory)
    
    res_addr ← memory[(cur_pos + 3)] + 1
    memory[res_addr] ← a × b
    new_pos ← cur_pos + 4
    new_pos(memory)(io)
} 

⍝ xxx03 output  
execute_read ← {
    (cur_pos memory io) ← ⍵
    read_val ← io[1]

    res_addr ← memory[(cur_pos + 1)] + 1
    memory[res_addr] ← read_val
    new_pos ← cur_pos + 2
    new_pos(memory)(io)
} 


⍝ xxx04 value  
execute_write ← {
    (cur_pos memory io) ← ⍵
    mode ← ⍺
    value_mode ← 1 get_argno_mode mode
    io[2] ← value_mode parameter_value (cur_pos+1)(memory) 
    new_pos ← cur_pos + 2
    new_pos(memory)(io)
} 

⍝ xxx05 cond new_pos
execute_jump_if_true ← {
    (cur_pos memory io) ← ⍵
    mode ← ⍺
    cond_mode ← 1 get_argno_mode mode
    pos_mode ← 2 get_argno_mode mode
    cond ← cond_mode parameter_value (cur_pos+1)(memory)
    jmp_pos ← (pos_mode parameter_value (cur_pos+2)(memory)) + 1
    (cond≠0): jmp_pos(memory)(io) 
    new_pos ← cur_pos + 3
    new_pos(memory)(io)
}

⍝ xxx06 cond new_pos
execute_jump_if_false ← {
    (cur_pos memory io) ← ⍵
    mode ← ⍺
    cond_mode ← 1 get_argno_mode mode
    pos_mode ← 2 get_argno_mode mode
    cond ← cond_mode parameter_value (cur_pos+1)(memory)
    jmp_pos ← (pos_mode parameter_value (cur_pos+2)(memory)) + 1
    (cond=0): jmp_pos(memory)(io) 
    new_pos ← cur_pos + 3
    new_pos(memory)(io)
} 

⍝ xxx07 a b  
execute_less_then ← {
    (cur_pos memory io) ← ⍵
    mode ← ⍺
    a_mode ← 1 get_argno_mode mode
    b_mode ← 2 get_argno_mode mode

    a ← a_mode parameter_value (cur_pos+1)(memory)
    b ← b_mode parameter_value (cur_pos+2)(memory)
    
    res_addr ← memory[(cur_pos + 3)] + 1
    memory[res_addr] ← a < b
    new_pos ← cur_pos + 4
    new_pos(memory)(io)
} 

⍝ xxx08 a b  
execute_equals ← {
    (cur_pos memory io) ← ⍵
    mode ← ⍺
    a_mode ← 1 get_argno_mode mode
    b_mode ← 2 get_argno_mode mode

    a ← a_mode parameter_value (cur_pos+1)(memory)
    b ← b_mode parameter_value (cur_pos+2)(memory)
    
    res_addr ← memory[(cur_pos + 3)] + 1
    memory[res_addr] ← a = b
    new_pos ← cur_pos + 4
    new_pos(memory)(io)
} 

execute ← {
  op ← ⍺
  mode ← get_op_mode op
  op_code ← 100 | op
  op_code=1: mode execute_add ⍵
  op_code=2: mode execute_mul ⍵
  op_code=3: mode execute_read ⍵
  op_code=4: mode execute_write ⍵
  op_code=5: mode execute_jump_if_true ⍵
  op_code=6: mode execute_jump_if_false ⍵
  op_code=7: mode execute_less_then ⍵
  op_code=8: mode execute_equals ⍵
  mode execute_terminate ⍵
}

step ← {  
    (ip memory io) ← ⍵ 
    mem_len ← ≢memory
    (ip > mem_len) : mem_len(memory)(io)
    op ← memory[ip] 
    op execute ip(memory)(io)
}

run_impl ← {
    ip ← ⍺
    (memory io) ← ⍵
    (next_ip new_memory new_io)  ← step ip(memory)(io)
    (next_ip > (≢new_memory)): new_memory(new_io)
    next_ip ∇ new_memory(new_io)
}

run ← {1 run_impl ⍵(⍺)}

program←⍬
program←program, 3 225 1 225 6 6 1100 1 238 225 104 0 1101 78 5 225 1 166 
program←program, 139 224 101 ¯74 224 224 4 224 1002 223 8 223 1001 224 
program←program, 6 224 1 223 224 223 1002 136 18 224 101 ¯918 224 224 4 
program←program, 224 1002 223 8 223 101 2 224 224 1 224 223 223 1001 83 84 224 
program←program, 1001 224 ¯139 224 4 224 102 8 223 223 101 3 224 224 1 224 
program←program, 223 223 1102 55 20 225 1101 53 94 225 2 217 87 224 1001
program←program, 224 ¯2120 224 4 224 1002 223 8 223 1001 224 1 224 1 224 223 
program←program, 223 102 37 14 224 101 ¯185 224 224 4 224 1002 223 8 223 1001
program←program, 224 1 224 1 224 223 223 1101 8 51 225 1102 46 15 225 1102 88
program←program, 87 224 1001 224 ¯7656 224 4 224 102 8 223 223 101 7 224 224 1 
program←program, 223 224 223 1101 29 28 225 1101 58 43 224 1001 224 ¯101 224 4 
program←program, 224 1002 223 8 223 1001 224 6 224 1 224 223 223 1101 93 54
program←program, 225 101 40 191 224 1001 224 ¯133 224 4 224 102 8 223 223 101
program←program, 3 224 224 1 223 224 223 1101 40 79 225 4 223 99 0 0 0 677 0 0
program←program, 0 0 0 0 0 0 0 0 0 1105 0 99999 1105 227 247 1105 1 99999 
program←program, 1005 227 99999 1005 0 256 1105 1 99999 1106 227 99999 
program←program, 1106 0 265 1105 1 99999 1006 0 99999 1006 227 274 1105 1 
program←program, 99999 1105 1 280 1105 1 99999 1 225 225 225 1101 294 0 0 
program←program, 105 1 0 1105 1 99999 1106 0 300 1105 1 99999 1 225 225 225 
program←program, 1101 314 0 0 106 0 0 1105 1 99999 1008 226 677 224 1002 
program←program, 223 2 223 1005 224 329 1001 223 1 223 1107 226 677 224 1002 
program←program, 223 2 223 1005 224 344 1001 223 1 223 8 677 226 224 1002 223 
program←program, 2 223 1006 224 359 1001 223 1 223 1108 226 677 224 1002 223 2
program←program, 223 1006 224 374 101 1 223 223 1007 677 677 224 102 2 223 223
program←program, 1006 224 389 1001 223 1 223 8 226 677 224 102 2 223 223 1006
program←program, 224 404 101 1 223 223 1007 226 226 224 1002 223 2 223 1006 
program←program, 224 419 101 1 223 223 107 677 226 224 1002 223 2 223 1006
program←program, 224 434 1001 223 1 223 1007 226 677 224 102 2 223 223 1005
program←program, 224 449 101 1 223 223 1107 226 226 224 1002 223 2 223 1005 
program←program, 224 464 1001 223 1 223 107 226 226 224 102 2 223 223 1006 224 479 101 1 223 223 108 226
program←program, 226 224 1002 223 2 223 1006 224 494 101 1 223 223 107 677 677 
program←program, 224 102 2 223 223 1005 224 509 1001 223 1 223 1008 677 677 224 1002 223 2 223 1006 224 524 101 1 223 223 1107 677 226 224 102 2 223 223 1006 224 539 1001 223 1 223 108 677 226 224 102 2 223 223 1006
program←program, 224 554 1001 223 1 223 1108 677 226 224 102 2 223 223 1005 224 569 1001 223 1 223 8 677 677 224 1002 223 2 223 1005 224 584 1001 223 1 223 7 677 
program←program, 677 224 1002 223 2 223 1005 224 599 101 1 223 223 1108 226 226 224 102 2 223 223 1006 224 614 101 1 223 223 1008 226 226 224 1002 223 2 223 1005 224 629 101 
program←program, 1 223 223 7 677 226 224 102 2 223 223 1006 224 644 1001 223
program←program, 1 223 7 226 677 224 102 2 223 223 1005 224 659 101 1 223 223 108 677 677 224 1002 223 2 223 1006 224 674 101 1 223 223 4 223 99 226

io ← 5 0
prog result ← io run program 

result
