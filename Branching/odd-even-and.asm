odd-even-and
.model small
.stack 100h
.data
msg1 db 'enter a digit: $'
even_msg db 0DH,0AH,'even number!$'
odd_msg db 0DH,0AH,'odd number!$'
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
    and al,1        
    jz even         

    lea dx,odd_msg
    jmp display

even:
    lea dx,even_msg

display:
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
main endp
end main
