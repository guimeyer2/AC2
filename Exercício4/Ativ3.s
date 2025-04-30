.data
B
cores: .word 0x00FF0000     # vermelho
       .word 0x0000FF00     # verde
       .word 0x000000FF     # azul
       .word 0x00FFFF00     # amarelo

.text
main:
    # pinta a tela inteira de branco
    li a0, 0x101
    li a1, 0x00FFFFFF
    ecall

loop_cores:
    
    la t0, cores      # ponteiro para as cores
    li t1, 4          # número de cores

cor_loop:
    beqz t1, loop_cores  
    lw a2, 0(t0)         # carrega cor atual em a2

    # desenha quadrado de (2,2) até (7,7)
    li t2, 2             
x_loop:
    li t3, 2             
y_loop:
    li a0, 0x100
    slli t4, t2, 16      
    or a1, t4, t3       
    ecall
    addi t3, t3, 1
    li t5, 8
    blt t3, t5, y_loop
    addi t2, t2, 1
    blt t2, t5, x_loop   # até x < 8

    
    li t6, 1000000
espera:
    addi t6, t6, -1
    bnez t6, espera

    # avança para próxima cor
    addi t0, t0, 4
    addi t1, t1, -1
    j cor_loop
