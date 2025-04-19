    .text
    .globl main

main:
    li s0, 20       # x = 20
    li s1, 35       # y = 35
    li s2, 0        # m = 0

    bgt s0, s1, x_maior

    # else: m = y
    mv s2, s1       
    j fim

x_maior:
    # if: m = x
    mv s2, s0

fim:
    # loop infinito só pra não encerrar direto
    j fim
