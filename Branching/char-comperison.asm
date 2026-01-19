;char-comperison
.model small
.stack 100h

.data
msg1 db 'enter a character: $'
correct_msg db 0dh,0ah,'correct!$'
wrong_msg  db 0dh,0ah,'wrong!$'

.code
main proc
    mov ax,@data
    mov ds,ax

    lea dx,msg1
    mov ah,9
    int 21h

    mov ah,1
    int 21h

    cmp al,'A'
    je print_correct 
    
    lea dx,wrong_msg
    jmp print_msg

print_correct:
    lea dx,correct_msg

print_msg:
    mov ah,9
    int 21h

    mov ah,4ch
    int 21h
main endp
end main
