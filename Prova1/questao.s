.data
A: .word 2, 4, 3, 8, 2, 0, 0

.text
.globl _start
_start:
    li t0, 0
    la t4, A

loop: 
    slti t1, t0, 4
    beq t1, x0, end
    andi t2, t0, 1
    beq t2, x0, even

odd: 
    slli t3, t0, 2
    add t4, t3, t4
    lw t5, 0(t4)
    lw t6, 4(t4)
    add t5, t5, t6
    sw t5, 0(t4)
    j next

even: 
    slli t3, t0, 2
    add t4, t3, t4
    lw t5, 0(t4)
    add t5, t5, t5
    sw t5, 0(t4)
    j next

next: 
    addi t0, t0, 1
    j loop

end: 
    nop