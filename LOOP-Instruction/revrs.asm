revrs
.model small
.stack 100h

.data
.code
main proc
    mov ax, @data
    mov ds, ax

    mov dl, 10100011b  
    mov cl, 8           
    xor bl, bl        

rev_loop:
    ror dl, 1          
    rcl bl, 1           
    dec cl
    jnz rev_loop

    mov ah, 4ch
    int 21h
main endp
end main
