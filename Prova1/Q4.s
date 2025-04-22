.data
D1: .word 4
D2: .word 1
D3: .word 2

.text
.globl _start
_start:
    addi x16, x0, 1000
    addi x9, x0, 0x03e8
P1: 
    addi x9, x9, 1
    ori x8, x0, 0    
    ori x11, x0, 0    
    ori x12, x0, 0
    ori x13, x0, 0
    ori x14, x0, 2
    la x17, D1
    lw x15, 0(x17)
    addi x17, x17, 4 
    addi x16, x16, -1
P2: 
    beq x8, x15, P5 
    slli x14, x14, 1
    lw x10, 0(x17)
    add x11, x11, x10
    slti x14, x10, 0
    bne x14, x0, P3
    slli x14, x14, 1
    add x13, x13, x10
    j P4
P3: 
    add x12, x12, x10
P4: 
    addi x8, x8, 2
    addi x17, x17, 4
    lw x15, 0(x17)
    j P2
P5: 
    beq x16, x0, P1