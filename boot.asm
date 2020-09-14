mov ah, 0x0e ; tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10 ; 'l' is still on al, remember?
mov al, 'o'
int 0x10

mov al, "3"
int 0x10
mov bx, macrohard_copyright
add bx, 0x7c00
mov al, [bx]
int 0x10

macrohard_copyrigt:
    ; ASCII code 0x58 ('X') is stored just before the zero-padding.
    ; On this code that is at byte 0x2d (check it out using 'xxd file.bin')
    db "(Not C) Macrohard"
; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55 
