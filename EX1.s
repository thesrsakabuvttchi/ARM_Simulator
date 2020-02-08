FileName: .asciz "test1.s"
.align
@FileHandle: .word 0 ........THE COMMENTED LINES ARE PREFERRED.
ldr r0,=FileName
mov r1,#0
swi 0X66
@ldr r1,=FileHandle..........I WAS JUST CURIOUS IF THE PROGRAM WOULD RUN WITHOUT THEM
@str r0,[r1].........................................................................
@ldr r0,=FileHandle..................................................................
@ldr r0,[r0]..................IT DOES!!!!!
ldr r1,=CharArray
mov r2,#80
swi 0X6a
swi 0x68
ldr r0,=CharArray
swi 0x02
swi 0X11
CharArray: .skip 80