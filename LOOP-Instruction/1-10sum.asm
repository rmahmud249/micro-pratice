1-10sum
.model small
.stack 100h

.data
n dw 10        
sum dw 0         

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, n    
    mov ax, 0   

sum_loop:
    add ax, cx   
    loop sum_loop

    mov sum, ax  

    mov ah, 4ch  
    int 21h
main endp
end main
