.data
x: .word 5       
z: .word 7       
y: .word 0       

.text
.globl main

main:
    
    lw t0, x          
    lw t1, z          

    
    slli t2, t0, 7    # x << 7 (128x)
    sub  t2, t2, t0   # 128x - x = 127x

    
    slli t3, t1, 6    # z << 6 (64z)
    add  t3, t3, t1   # 64z + z = 65z

    
    sub t4, t2, t3    
    addi t4, t4, 1    


    sw t4, y  

    
    j end

end:
    j end