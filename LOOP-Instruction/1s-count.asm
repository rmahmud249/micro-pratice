1scount
.model small
.stack 100h

.data
num dw 1234h
count db 0

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 16        
    mov ax, num       

loop_start:
    rcl ax, 1       
    jnc no_inc       
    inc count 
           
no_inc:
    loop loop_start

    mov ah, 4ch      
    int 21h  
    
main endp
end main
