prime-2
.model small
.stack 100h
.data
n dw 46  
msg1 db 0DH,0AH,'Number is Prime$'
msg2 db 0DH,0AH,'Number is Not Prime$'              
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
    lea dx, msg1
    mov ah, 09H
    int 21H
    jmp exit

not_prime:
    lea dx, msg2
    mov ah, 09H
    int 21H

exit:
    mov ah, 4ch
    int 21h
main endp
end main




