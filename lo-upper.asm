.MODEL SMALL
.STACK 100H
.DATA
    msg1 DB 'Enter a lowercase letter: $'
    msg2 DB 0DH,0AH,'Uppercase letter is: $'
    result DB 0       

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX         

  
    MOV DX, OFFSET msg1
    MOV AH, 09H        
    INT 21H

  
    MOV AH, 01H          
    INT 21H
    MOV BL, AL          


    SUB BL, 20H       
    MOV result, BL      

    
    MOV DX, OFFSET msg2
    MOV AH, 09H
    INT 21H

  
    MOV DL, result
    MOV AH, 02H
    INT 21H

   
    MOV AH, 4CH
    INT 21H
      
MAIN ENDP
END MAIN
