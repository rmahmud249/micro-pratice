.Model Small
.Stack 100h
.Data
.Code
main PROC
    mov ax,@data
    mov ds,ax 
    
    mov ah,02h
    mov dl,"?"
    int 21h
    
    mov ah,01h
    int 21h
    mov bl,al
    
    
    mov ah,02h
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
             
    mov ah,02h
    mov dl,bl
    int 21h
    
    
    mov ax,4c00h
    int 21h         
    
       
    
main ENDP
END main