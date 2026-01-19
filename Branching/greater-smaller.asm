greater-smaller
.model small
.stack 100h

.data
msg1 db 'enter first digit: $'
msg2 db 0DH,0AH,'enter second digit: $'
first_msg db  0DH,0AH,'first is larger$'
second_msg db  0DH,0AH,'second is larger$'
equal_msg db  0DH,0AH, 'both are equal$
'
num1 db ?
num2 db ?

.code
main proc
    mov ax,@data
    mov ds,ax

    lea dx,msg1
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    mov num1,al

    lea dx,msg2
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    mov num2,al

    mov al,num1
    cmp al,num2  
    
    jg first_larger
    jl second_larger
    
    lea dx,equal_msg
    jmp display

first_larger:
    lea dx,first_msg
    jmp display

second_larger:
    lea dx,second_msg

display:
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h

main endp
end main
