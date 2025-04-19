.data
A: .word 1, 3, 5, 7, 9      
B: .word 2, 4, 6, 8, 10    

.text
.globl main

main:
    
    la t0, A                 
    la t1, B                  

    
    # A[0] = B[0] * 1 + A[0]
    lw t2, 0(t1)             
    lw t3, 0(t0)             
    add t4, t2, t3            
    sw t4, 0(t0)              

    # A[1] = B[1] * 2 + A[1]
    lw t2, 4(t1)              
    lw t3, 4(t0)             
    slli t5, t2, 1          
    add t4, t5, t3            
    sw t4, 4(t0)              

    # A[2] = B[2] * 3 + A[2]
    lw t2, 8(t1)              
    lw t3, 8(t0)              
    slli t5, t2, 1           
    add t5, t5, t2            
    add t4, t5, t3            
    sw t4, 8(t0)              

    # A[3] = B[3] * 4 + A[3]
    lw t2, 12(t1)             
    lw t3, 12(t0)            
    slli t5, t2, 2            
    add t4, t5, t3            
    sw t4, 12(t0)             

    # A[4] = B[4] * 5 + A[4]
    lw t2, 16(t1)            
    lw t3, 16(t0)             
    slli t5, t2, 2            
    add t5, t5, t2            
    add t4, t5, t3            
    sw t4, 16(t0)             

   
    j end

end:
    j end