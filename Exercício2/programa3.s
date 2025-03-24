.text
.globl _start
_start:
   
    li t0, 3           # x
    li t1, 4           # y

    # 15 - x
    li t2, 15          
    sub t3, t2, t0     # 15 - 3 = 12

    # 67 - y
    li t4, 67          
    sub t5, t4, t1     #  67 - 4 = 63

    # 15 - x + 67 - y
    add t6, t3, t5     # 12 + 63 = 75

    # z = 75 + 4 = 79
    addi s0, t6, 4    

    nop