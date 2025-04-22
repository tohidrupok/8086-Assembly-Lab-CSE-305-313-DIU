.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV CL, 1
    MOV AL, 0  
    
    
LOOP: 
    ADD AL, CL  
    ADD CL, 2H

    CMP CL, 7 
    
    JL LOOP
    
    ADD AL,30H
   
              
    MOV AH, 2
    MOV DL, AL
    INT 21H
              
    MOV AH, 2
    MOV DL, BL
    INT 21H


MAIN ENDP
END MAIN