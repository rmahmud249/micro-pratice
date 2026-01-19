.MODEL SMALL
.STACK 100H
.DATA
    msg1 DB 'Enter first single-digit number: $'
    msg2 DB 0DH,0AH,'Enter second single-digit number: $'
    msg3 DB 0DH,0AH,'Sum is: $'
    num1 DB 0
    num2 DB 0
    sum  DB 0

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX           ; Initialize data segment

    ; Prompt for first number
    MOV DX, OFFSET msg1
    MOV AH, 09H
    INT 21H

    ; Read first number
    MOV AH, 01H
    INT 21H
    SUB AL, 30H          ; Convert ASCII to numeric
    MOV num1, AL

    ; Prompt for second number
    MOV DX, OFFSET msg2
    MOV AH, 09H
    INT 21H

    ; Read second number
    MOV AH, 01H
    INT 21H
    SUB AL, 30H          ; Convert ASCII to numeric
    MOV num2, AL

    ; Add numbers
    MOV AL, num1
    ADD AL, num2
    MOV sum, AL

    ; Display result message
    MOV DX, OFFSET msg3
    MOV AH, 09H
    INT 21H

    ; Convert sum to ASCII and display
    MOV AL, sum
    ADD AL, 30H
    MOV DL, AL
    MOV AH, 02H
    INT 21H

    ; Exit program
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
