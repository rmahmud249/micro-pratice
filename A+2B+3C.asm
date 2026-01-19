;Calculate A + 2B + 3C 
.Model Small
.Stack 100H
.Data
msg1 db 'Enter A:$'
msg2 db 0DH,0AH,'Enter B:$'
msg3 db 0DH,0AH,'Enter C:$'
msg4 db 0DH,0AH,'A + 2B + 3C = $'

a db ?
b db ?
c db ?

result db ?   

main proc
    mov ax,@data
    mov ds,ax
        
    lea dx,msg1
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    sub al,30H
    mov a,al
    
    lea dx,msg2
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    sub al,30H
    mov b,al  
    
    lea dx,msg3
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    sub al,30H
    mov c,al
    
    mov al,a
    mov bl,b
    add bl,b   
    mov cl,c 
    add cl,c
    add cl,c
     
    add al,bl
    add al,cl
   
    
    mov result,al
    
    lea dx,msg4
    mov ah,09h
    int 21h
    
    
    add result,30h
    mov dl,result
    mov ah,02H
    int 21h
    
    
    
    mov ax,4c00H
    int 21h
        
        
     

main endp
end main

