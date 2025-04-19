    .text
    .globl main

main:
    li s0, 8        
    li s1, 0      

loop:
    li t0, 8
    bne s0, t0, fim     

    mv s1, s0           
    addi s0, s0, 1      

    j loop              

fim:
    j fim               
