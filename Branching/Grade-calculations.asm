Grade-calculations
.model small
.stack 100h

.data
msg1 db 'enter grade: $'
excellent_msg db 0DH,0AH,'excellent$'
good_msg db 0DH,0AH,'good$'
average_msg db 0DH,0AH,'average$'
poor_msg db 0DH,0AH, 'poor$'
fail_msg  db 0DH,0AH, 'fail$'

.code
main proc
    mov ax,@data
    mov ds,ax

    lea dx,msg1
    mov ah,09H
    int 21h

    mov ah,01H
    int 21h

    cmp al,'A'
    je excellent
    cmp al,'B'
    je good
    cmp al,'C'
    je average
    cmp al,'D'
    je poor
    cmp al,'E'
    je fail 
    
    jmp exit

excellent:
    lea dx,excellent_msg
    jmp display

good:
    lea dx,good_msg
    jmp display

average:
    lea dx,average_msg
    jmp display

poor:
    lea dx,poor_msg
    jmp display

fail:
    lea dx,fail_msg

display:
    mov ah,9
    int 21h

exit:
    mov ah,4ch
    int 21h
main endp
end main
