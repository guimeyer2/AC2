    .data
msg_quantidade: .asciiz "insira a quantidade de numeros: "
msg_insira_numeros: .asciiz "insira os numeros:\n"
msg_resultado: .asciiz "numeros maiores que a media: "

    .text
    .globl main


LeNumero:
  
    li a7, 5          
    ecall
    ret               

# void LeVetor(int *v, int N)

LeVetor:
    addi sp, sp, -16      
    sw s0, 12(sp)
    sw s1, 8(sp)
    sw ra, 4(sp)

    mv s0, a0             
    mv s1, a1             
    li t0, 0              

le_vetor_loop:
    beq t0, s1, le_vetor_fim
    call LeNumero          
    sw a0, 0(s0)           
    addi s0, s0, 4         
    addi t0, t0, 1         
    j le_vetor_loop

le_vetor_fim:
    lw s0, 12(sp)
    lw s1, 8(sp)
    lw ra, 4(sp)
    addi sp, sp, 16
    ret

# int Media(int *v, int N)

Media:
    addi sp, sp, -12
    sw s0, 8(sp)
    sw s1, 4(sp)
    sw ra, 0(sp)

    mv s0, a0     
    mv s1, a1     
    li t0, 0      
    li t1, 0      

media_loop:
    beq t0, s1, media_fim
    lw t2, 0(s0)
    add t1, t1, t2
    addi s0, s0, 4
    addi t0, t0, 1
    j media_loop

media_fim:
    div t1, t1, s1    
    mv a0, t1

    lw s0, 8(sp)
    lw s1, 4(sp)
    lw ra, 0(sp)
    addi sp, sp, 12
    ret

# int MaiorQueMedia(int N)


MaiorQueMedia:
    addi sp, sp, -408       #
    sw s0, 404(sp)
    sw s1, 400(sp)
    sw s2, 396(sp)
    sw ra, 392(sp)

    mv s0, a0               
    la s1, 0(sp)            
    mv a0, s1
    mv a1, s0
    call LeVetor            

    mv a0, s1
    mv a1, s0
    call Media              
    mv s2, a0            

    li t0, 0               
    li t1, 0              
loop_maiores:
    beq t0, s0, fim_maiores
    lw t2, 0(s1)
    blt t2, s2, nao_contar
    addi t1, t1, 1
nao_contar:
    addi s1, s1, 4
    addi t0, t0, 1
    j loop_maiores

fim_maiores:
    mv a0, t1              

    lw s0, 404(sp)
    lw s1, 400(sp)
    lw s2, 396(sp)
    lw ra, 392(sp)
    addi sp, sp, 408
    ret

main:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)

    
    la a0, msg_quantidade
    li a7, 4            
    ecall

    
    call LeNumero
    mv s0, a0          

   
    mv a0, s0
    call MaiorQueMedia

   
    la a0, msg_resultado
    li a7, 4
    ecall

    
    mv a1, a0           
    call print_int      


    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    li a7, 10           
    ecall


print_int:
    addi sp, sp, -20
    sw ra, 16(sp)
    sw s0, 12(sp)
    sw s1, 8(sp)
    sw s2, 4(sp)

    mv t0, a1          
    li s0, 10         
    la s1, buffer + 20 
    li s2, 0           

printa_loop:
    rem t1, t0, s0
    div t0, t0, s0
    addi t1, t1, '0'
    addi s1, s1, -1
    sb t1, 0(s1)
    addi s2, s2, 1
    bnez t0, printa_loop

    
    mv a0, s1
    mv a1, s2
    li a7, 4           
    ecall

    lw ra, 16(sp)
    lw s0, 12(sp)
    lw s1, 8(sp)
    lw s2, 4(sp)
    addi sp, sp, 20
    ret

    .data
buffer: .space 21
