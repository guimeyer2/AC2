.data
x1: .word 15       
x2: .word 25       
x3: .word 13       
x4: .word 17      
soma: .word -1     

.text
.globl _start      

_start:
   
    lw t0, x1      
    lw t1, x2      
    lw t2, x3      
    lw t3, x4     
    
    # soma dos valores
    add t4, t0, t1
    add t4, t4, t2 
    add t4, t4, t3 # (53 + 17 = 70)
    
    
    sw t4, soma, t5 
    
  
    j end              

end:
    j end              