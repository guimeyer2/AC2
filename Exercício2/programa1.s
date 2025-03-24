.text
.globl _start
_start:

li t0, 2 #a
li t1, 3 #b
li t2, 4 #c
li t3, 5 #d


add t4, t0, t1 #5
add t5, t2, t3 #9
sub t6, t4, t5 # -4
# X = t6 = (a + b) - (c + d)


sub t4, t0, t1 #-1
add t4, t4, t6 #-5
# Y = t4 = (a - b) + X[t6]

sub t1, t6, t4 #1
# B = x - y


nop
