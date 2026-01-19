vowel-cons
.model small
.stack 100h

.data
msg1 db 'enter a character: $'
vowel_msg db 0DH,0AH,'vowel$'
consonant_msg db 0DH,0AH,'consonant$'

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
    je vowel
    cmp al,'e'
    je vowel
    cmp al,'i'
    je vowel
    cmp al,'o'
    je vowel
    cmp al,'u'
    je vowel

    lea dx,consonant_msg
    jmp display

vowel:
    lea dx,vowel_msg

display:
    mov ah,9
    int 21h

    mov ah,4ch
    int 21h
main endp
end main
