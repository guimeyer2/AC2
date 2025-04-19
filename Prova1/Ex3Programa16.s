/*int exemploC(int x) {
    switch(x) {
        case 0: return 10;
        case 1: return 20;
        case 2: return 30;
        case 3: return 40;
        default: return -1;
    }
}*/
.text
.globl exemploAssembly

exemploAssembly:
    
    
    li t0, 0
    beq a0, t0, case0
    
    li t0, 1
    beq a0, t0, case1
    
    
    li t0, 2
    beq a0, t0, case2
    
    
    li t0, 3
    beq a0, t0, case3
    
   
    j default

case0:
    li a0, 10
    ret

case1:
    li a0, 20
    ret

case2:
    li a0, 30
    ret

case3:
    li a0, 40
    ret

default:
    li a0, -1
    ret