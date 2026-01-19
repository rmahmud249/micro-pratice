; Calculate A^3 - B^3
.model small
.stack 100h

.data
msg1 db 'Enter A:$'
msg2 db 0dh,0ah,'Enter B:$'
msg3 db 0dh,0ah,'A^3 - B^3 = $'

a db ?
b db ?
result db ?

.code
main proc
    mov ax, @data
    mov ds, ax

  
    lea dx, msg1
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov a, al


    lea dx, msg2
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov b, al


    mov al, a
    mul al         
    mov bl, al    
    mov al, bl
    mul a           
    mov result, al  


    mov al, b
    mul al          
    mov bl, al     
    mov al, bl
    mul b         

 
    sub result, al


    lea dx, msg3
    mov ah, 09h
    int 21h

    add result, 30h
    mov dl, result
    mov ah, 02h
    int 21h

 
    mov ax, 4C00h
    int 21h

main endp
end main
