.text
.globl _start
_start:
    
    li t0, 1           
    slli t1, t0, 20    # x = 1 deslocado em 20 bits para a esquerda = 1048576

    slli t2, t0, 12    # y = 1 deslocado em 12 bits para a esquerda = 4096

    # z = x + y
    add s0, t1, t2     # z = 1048576 + 4096 = 1052672

    nop