    .data
A:  .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9   

    .text
    .globl main

main:
    li s0, 0            
    la s1, A            

loop:
    li t5, 10
    bge s0, t5, fim     

    andi t0, s0, 1      # t0 = i % 2
    bnez t0, else  # se i % 2 != 0, vai pro else

    # --- IF (i % 2 == 0) ---
    slli t1, s0, 2      # t1 = i * 4
    add t2, s1, t1      # t2 = &A[i]
    lw t3, 0(t2)        # t3 = A[i]
    
    addi t4, s0, 1      # t4 = i + 1
    slli t4, t4, 2      # t4 = (i + 1) * 4
    add t4, s1, t4      # t4 = &A[i+1]
    lw t4, 0(t4)        # t4 = A[i+1]
    
    add t3, t3, t4      # t3 = A[i] + A[i+1]
    sw t3, 0(t2)        # A[i] = t3

    j incremento             

else:
    slli t1, s0, 2      # t1 = i * 4
    add t2, s1, t1      # t2 = &A[i]
    lw t3, 0(t2)        # t3 = A[i]
    slli t3, t3, 1      # t3 = A[i] * 2
    sw t3, 0(t2)        # A[i] = t3

incremento:
    addi s0, s0, 1      # i++
    j loop

fim:
    j fim               
