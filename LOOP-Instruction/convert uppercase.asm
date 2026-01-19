convert uppercase
.model small
.stack 100h

.data
str db "heLlo world! 8086 asm$"
msg db "capitalized: $"

.code
main proc
    mov ax, @data
    mov ds, ax
    mov es, ax

    cld
    mov si, offset str
    mov di, offset str

cap_loop:
    lodsb
    cmp al, '$'
    je done
    cmp al, 'a'
    jb store
    cmp al, 'z'
    ja store
    sub al, 20h       
store:
    stosb
    jmp cap_loop

done:
    stosb

    mov dx, offset msg
    mov ah, 09h
    int 21h

    mov dx, offset str
    mov ah, 09h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
