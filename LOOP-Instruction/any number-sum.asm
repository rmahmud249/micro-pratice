any number-sum
.model small
.stack 100h

.data
sum dw 0

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 11      
    mov bx, 50      
    mov ax, 0       

sum_loop:
    add ax, bx      
    inc bx
    loop sum_loop

    mov sum, ax    

    mov ah, 4ch
    int 21h
main endp
end main
