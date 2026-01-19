password-check
.model small
.stack 100h

.data
msg1 db 'enter password: $'
granted_msg db 'access granted$'
denied_msg db 'access denied$'

.code
main proc
    mov ax,@data
    mov ds,ax

    lea dx,msg1
    mov ah,9
    int 21h

    mov ah,1
    int 21h

    cmp al,'x'
    jne access_denied

    lea dx,granted_msg
    jmp display

access_denied:
    lea dx,denied_msg

display:
    mov ah,9
    int 21h

    mov ah,4ch
    int 21h

main endp
end main
