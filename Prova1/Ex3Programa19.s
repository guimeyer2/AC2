    .data
A:  .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9     

    .text
    .globl main

main:
    li s0, 0              
    la s1, A              

loop:
    li t3, 10
    bge s0, t3, fim       

    slli t0, s0, 2        

    add t4, s1, t0       
    lw t1, 0(t4)          
    addi t1, t1, 1       
    sw t1, 0(t4)          

    addi s0, s0, 1        

    j loop

fim:
    j fim                
