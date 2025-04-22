.MODEL SMALL
.STACK 100H
.DATA
    STR1 DB "This ROLL Number is Positive$"
    STR2 DB "This ROLL  Number is Negative$"

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX 

    MOV AL, 25     
    CMP AL, 0
    JS ELSE        
    
IF: 
    MOV AH, 9
    LEA DX, STR1
    INT 21H
    JMP N

ELSE:
    MOV AH, 9
    LEA DX, STR2
    INT 21H

N:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN