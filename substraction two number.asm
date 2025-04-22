.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC   
    MOV AX, 6
    MOV BX, 2
    
    ;ADD AX, BX
    SUB AX, BX
    ;MUL BX;,
    ;DIV BX;
    

    ADD AX,30H
   
              
    MOV AH, 2
    MOV DX, AX
    INT 21H
          

MAIN ENDP
END MAIN
