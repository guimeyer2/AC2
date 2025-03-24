.text
.globl _start
_start:
 
    li t0, -1          # x = 0xFFFFFFFF 

   
    li t1, 1          
    slli t2, t1, 13    # y = 1 deslocado em 13 bits para a esquerda = 8192

   
    slli t3, t2, 2     # 4*y = 8192 deslocado em 2 bits para a esquerda = 32768

    # z = x - 4*y (0xFFFFFFFF - 32768)
    sub s0, t0, t3     

    nop