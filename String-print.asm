.MODEL SMALL
.STACK 100H

.DATA
PROMPT DB 'ENTER STRING: $'
STRING DB 20 DUP(?)

.CODE
MAIN PROC
    mov ax, @data
    mov ds, ax

    lea dx, PROMPT
    mov ah, 09H
    int 21H

    lea si, STRING

READ_LOOP:
    mov ah, 01H
    int 21H 
    
    cmp al, 0DH        
    je PRINT

    mov [si], al
    inc si
    jmp READ_LOOP

PRINT:
    mov ah, 02H
    mov dl, 0DH
    int 21H 
    
    mov dl, 0AH
    int 21H

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
