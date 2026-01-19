
.Model Small
.Stack 100H
.Data
msg1 db 'Enter A:$'
msg2 db 0DH,0AH,'Enter B:$'
msg3 db 0DH,0AH,'2A + B^2 = $'

a db ?
b db ?

result db ?   

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
    add al,a
    mov bl,b
    mul bl
    add al,bl
    
    
    mov result,al
     
    lea dx,msg3
    mov ah,09h
    int 21h
    
    
    add result,30H
    mov dl,result
    
  
    mov ah,02h
    int 21h
    
    
    
    mov ax,4c00H
    int 21h
      
       
     

main endp
end main

