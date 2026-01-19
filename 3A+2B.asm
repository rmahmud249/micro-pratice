.Model Small
.Stack 100H
.Data
MSG1 DB 'ENTER A:$'
MSG2 DB 0DH,0AH,'ENTER B:$'
MSG3 DB 0DH,0AH,'3A+2B = $'
A DB ?
B DB ?
RESULT DB ?
.Code

main PROC
    mov ax,@data
    mov ds,ax

  
    lea dx,MSG1
    mov ah,09H
    int 21H

    mov ah,01H
    int 21H
    sub al,30H
    mov A,al

   
    lea dx,MSG2
    mov ah,09H
    int 21H

    mov ah,01H
    int 21H
    sub al,30H
    mov B,al

   
    mov al,A
    add al,A
    add al,A      
    mov bl,B
    add bl,B        
    add al,bl

    mov RESULT,al


    lea dx,MSG3
    mov ah,09H
    int 21H

    mov al,RESULT
    add al,30H
    mov dl,al
    mov ah,02H
    int 21H

    mov ax,4C00H
    int 21H
main ENDP
end main
