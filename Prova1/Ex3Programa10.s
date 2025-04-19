.data
x1: .word 15
x2: .word 25
x3: .word 13
x4: .word 17

.text
.globl _start
_start:
    
    addi s1, zero, 1       
    
   
    la t0, x1              
    la t1, x2              
    la t2, x3              
    la t3, x4              
    
    lw s2, 0(t0)           
    lw s3, 0(t1)           
    lw s4, 0(t2)           
    lw s5, 0(t3)           
    
    
    li a7, 10              
    ecall