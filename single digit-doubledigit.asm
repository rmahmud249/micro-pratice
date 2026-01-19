.model small
.stack 100h

.data
msg1 db 'enter a: $'
msg2 db 0dh,0ah,'enter b: $'
msg3 db 0dh,0ah,'3a + 2b = $'
a db ?
b db ?
result db ?

.code
main proc
    mov ax,@data
    mov ds,ax

    lea dx,msg1
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    sub al,30h
    mov a,al

   
    lea dx,msg2
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    sub al,30h
    mov b,al

    mov al,a
    add al,a
    add al,a      
    mov bl,b
    add bl,b     
    add al,bl
    mov result,al  

   
    lea dx,msg3
    mov ah,9
    int 21h


    mov al,result
    mov ah,0
    mov bl,10
    div bl         
    add al,30h      
    mov dl,al
    mov ah,2
    int 21h

    mov dl,ah      
    add dl,30h
    mov ah,2
    int 21h

   
    mov ah,4ch
    int 21h

main endp
end main
