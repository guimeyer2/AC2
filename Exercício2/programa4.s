.text
.globl _start
_start:
    
    li t0, 1           # x 

    # 5 * x
    li t1, 5          
    mul t2, t1, t0     # 5 * 1 = 5

    # y = 5*x + 15
    addi s0, t2, 15   

    nop