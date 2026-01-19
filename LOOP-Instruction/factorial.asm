factorial
.model small
.stack 100h

.data
num  db 5      
result dw 0       

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, num
    mov ah, 0
    mov cx, ax     
    mov ax, 1       

    cmp cx, 0
    je store_result 

factorial_loop:
    mul cx         
    loop factorial_loop

store_result:
    mov result, ax

    mov ah, 4ch
    int 21h
main endp
end main
