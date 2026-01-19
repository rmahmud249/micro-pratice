; Calculate A^2 - B^2
.model small
.stack 100h
.data
msg1 db 'Enter A:$'
msg2 db 0dh,0ah,'Enter B:$'
msg3 db 0dh,0ah,'A^2 - B^2 = $'

a db ?
b db ?
result db ?

.code
main proc
    mov ax,@data
    mov ds,ax
        
    lea dx,msg1
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    sub al,30h
    mov a,al
    
  
    lea dx,msg2
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    sub al,30h
    mov b,al
    
  
    mov al,a
    mul al         
    mov result, al  

   
    mov al,b
    mul al          

    
    sub result, al 
  
    lea dx,msg3
    mov ah,09h
    int 21h
    
    add result,30h
    mov dl,result
    mov ah,02h
    int 21h
    
 
    mov ax,4C00h
    int 21h

main endp
end main
