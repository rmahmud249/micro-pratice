prime
.model small
.stack 100h
.data
n dw 17        
is_prime db 0        
.code
main proc
    mov ax, @data
    mov ds, ax

    mov ax, n
    cmp ax, 2
    jb not_prime      

    cmp ax, 2
    je set_prime     

    mov cx, ax
    sub cx, 2        
    mov bx, 2         

prime_loop:
    mov dx, 0
    mov ax, n
    div bx           
    cmp dx, 0 
    je not_prime      
    inc bx
    loop prime_loop

set_prime:
    mov is_prime, 1
    jmp exit

not_prime:
    mov is_prime, 0

exit:
    mov ah, 4ch
    int 21h
main endp
end main
