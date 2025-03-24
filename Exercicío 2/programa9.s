.text
.globl _start
_start:
    
    lui x8, 0x12345     
    addi x8, x8, 0x678  # x8 = 0x12345678 

  
    
    srli x9, x8, 24     # desloca 24 bits para direita: 0x00000012
    andi x9, x9, 0xFF   

    # x10 = 0x34
    srli x10, x8, 16    # desloca 16 bits: 0x00001234
    andi x10, x10, 0xFF 

    # x11 = 0x56
    srli x11, x8, 8     # desloca 8 bits: 0x00123456
    andi x11, x11, 0xFF 

   
    andi x12, x8, 0xFF 

    nop