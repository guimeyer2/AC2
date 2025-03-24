.text
.globl _start
_start:
    
    li t0, 3           # 3
    li t1, 4           # 4

    # 15 * x
    li t2, 15          
    mul t3, t2, t0     # 15 * 3 = 45

    # 67 * y
    li t4, 67          
    mul t5, t4, t1     # 67 * 4 = 268

    # (15*x) + (67*y) = 45 + 268 = 313
    add t6, t3, t5     

    # z = 313 * 4 = 1252
    li s1, 4         
    mul s0, t6, s1     

    nop