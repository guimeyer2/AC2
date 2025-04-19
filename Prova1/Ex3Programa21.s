.data
num: .word 10, 2, 8, 3, 7, 15, 2, 8, 10, 4  
n:   .word 10  

.text
.globl _start

_start:
   
    la t0, n        
    lw t1, 0(t0)    

    li t2, 0        #início do loop externo

loop_externo:
    bge t2, t1, fim_loop_externo   

   
    move t3, t2         
    addi t3, t3, 1      

    # carrega o valor de num[i] em t4 (A[i])
    la t5, num          
    slli t6, t2, 2      
    add t7, t5, t6      
    lw t4, 0(t7)        # t4 = A[i]

loop_interno:
    bge t3, t1, troca    

    
    slli t9, t3, 2      
    add t10, t5, t9     # t10 = endereço de num[j]
    lw t8, 0(t10)       # t8 = A[j]

    # compara A[i] e A[j]
    blt t8, t4, novo_menor    # se A[j] < A[i], atualiza o índice do menor valor

    addi t3, t3, 1      # incrementa j
    j loop_interno        

novo_menor:
    move t4, t8         # atualiza o menor valor (A[j]) para A[i]
    move t2, t3         # atualiza o índice i para o novo menor índice (j)

    addi t3, t3, 1      # incrementa j para continuar a busca
    j loop_interno        

troca:
    # troca A[i] com A[j]
    la t5, num
    slli t6, t2, 2      # t6 = i * 4
    add t7, t5, t6      # t7 = endereço de num[i]
    lw t4, 0(t7)        # t4 = A[i]

    slli t9, t3, 2      # t9 = j * 4
    add t10, t5, t9     # t10 = endereço de num[j]
    lw t8, 0(t10)       # t8 = A[j]

    # troca os valores A[i] e A[j]
    sw t8, 0(t7)        # A[i] = A[j]
    sw t4, 0(t10)       # A[j] = A[i]

    addi t2, t2, 1      # incrementa i para o próximo elemento
    j loop_externo      # volta para o início do loop externo

fim_loop_externo:
    
        j fim  