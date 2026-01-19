range-check
.model small
.stack 100h

.data
msg1 db 'enter a digit: $'
small_msg db 'small$'
large_msg db 'large$'
invalid_msg db 'invalid$'

.code
main proc
    mov ax,@data
    mov ds,ax

    lea dx,msg1
    mov ah,9
    int 21h

    mov ah,1
    int 21h

    cmp al,'0'
    jl invalid
    cmp al,'9'
    jg invalid
    cmp al,'5'
    jl small

    lea dx,large_msg
    jmp display

small:
    lea dx,small_msg
    jmp display

invalid:
    lea dx,invalid_msg

display:
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h

main endp
end main
