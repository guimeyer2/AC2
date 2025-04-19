.text
.globl main

main:
    
    li s0, 10         
    li s1, 1        
    li s2, 0           


    bgt s0, s1, xmaior  
  
    mv s2, s1         
    j end_if           

xmaior:
   
    mv s2, s0         

end_if:
    
    j end_if