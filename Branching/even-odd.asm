;even-odd
.model small
.stack 100h

.data
msg1  db 'enter a digit: $'
even_msg db 0DH,0AH,'Even$'
odd_msg  db 0DH,0AH,'Odd$'

.code
main proc
    mov ax,@data
    mov ds,ax

    lea dx,msg1
    mov ah,09H
    int 21h

    mov ah,01H
    int 21h

    sub al,30H   
    and al,1     
    jz even     

    lea dx,odd_msg
    jmp display

even:
    lea dx,even_msg

display:
    mov ah,09H
    int 21h

    mov ah,4ch
    int 21h
main endp
end main
