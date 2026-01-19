;big-sum10
.model small
.stack 100h

.data
msg1 db 'enter first digit: $'
msg2 db 'enter second digit: $'
big_msg db 'big sum!$'
small_msg db 'small sum!$'
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
    sub al,30h     
    mov num1,al

    lea dx,msg2
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    sub al,30h      
    mov num2,al

    mov al,num1
    add al,num2     
    cmp al,10       
    jg big_sum       

    lea dx,small_msg
    jmp display

big_sum:
    lea dx,big_msg

display:
    mov ah,9
    int 21h

    mov ah,4ch
    int 21h

main endp
end main
