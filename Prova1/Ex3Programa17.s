.text
.globl main

main:
   
    li s0, 25         
    li s1, 0           

   
    li t0, 10          
    beq s0, t0, case10 

    li t0, 25         
    beq s0, t0, case25

    
    j default

case10:
    li s1, 10          
    j fim_switch       

case25:
    li s1, 25          
    j fim_switch       

default:
    li s1, 0           

fim_switch:
   
    j fim_switch