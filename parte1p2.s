.text
.globl _start
_start:
    li t0, 1           #x  
    li t1, 5   

    sub t2, t1, t0     #t2 = 5 - x  = 4
    addi t3, t2, 15    #t3 = 4 + 15 = 19 = y

    nop