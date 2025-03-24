.text
.globl _start
_start:

    ori x8, x0, 0x01      # x8 = 0x00000001

    
    slli x8, x8, 1        
    ori  x8, x8, 0x01     # bits 0-1 = 1
    slli x8, x8, 2        
    ori  x8, x8, 0x03     # bits 0-3 = 1
    slli x8, x8, 4        
    ori  x8, x8, 0x0F     # bits 0-7 = 1
    slli x8, x8, 8        
    ori  x8, x8, 0xFF     # bits 0-15 = 1
    slli x8, x8, 16       
    ori  x8, x8, 0xFFFF   # todos os bits = 1

   
    nop