FileName: .asciz "newfile.txt"
TextString: .asciz "Hello\0"
FileHandler: .word 0

ldr r0,=FileName
mov r1,#1
swi 0x66
ldr r1,=FileHandler
str r0,[r1]
ldr r0,=FileHandler
ldr r0,[r0]
ldr r1,=TextString
swi 0x69
swi 0x68
swi 0x11