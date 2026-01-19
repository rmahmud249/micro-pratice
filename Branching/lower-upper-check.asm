lower-upper-check.
.model small
.stack 100h

.data
msg1 db 'enter a character: $'
upper_msg db 'uppercase$'
lower_msg db 'lowercase$'
neither_msg db 'neither$'

.code
main proc
    mov ax,@data
    mov ds,ax

    lea dx,msg1
    mov ah,9
    int 21h

    mov ah,1
    int 21h

    cmp al,'a'
    jl check_upper
    cmp al,'z'
    jg check_upper
    lea dx,lower_msg
    jmp display

check_upper:
    cmp al,'A'
    jl neither
    cmp al,'Z'
    jg neither
    lea dx,upper_msg
    jmp display

neither:
    lea dx,neither_msg

display:
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h

main endp
end main
