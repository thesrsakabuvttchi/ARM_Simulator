num: .word 5

.align

ldr r0,=num
ldr r0,[r0]
cmp r0,#3
blt DEFAULT

FIB:
mov r1,#2
mov r2,#1
mov r3,#1
LOOP:
add r1,r1,#1;
add r3,r2,r3
sub r2,r3,r2
cmp r0,r1;
bne LOOP

DEFAULT:
mov r3,#1