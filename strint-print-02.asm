.MODEL SMALL
.STACK 100H

.DATA
STRING DB 'HELLO'  

.CODE
MAIN PROC
    mov ax, @data
    mov ds, ax

    lea si, STRING     

PRINT_LOOP:
    mov al, [si]      
    cmp al, 0          
    je EXIT

    mov dl, al
    mov ah, 02H        
    int 21H

  
    mov dl, 0DH
    int 21H
    mov dl, 0AH
    int 21H

    inc si
    jmp PRINT_LOOP

EXIT:
    mov ax, 4C00H
    int 21H
    
MAIN ENDP
END MAIN
