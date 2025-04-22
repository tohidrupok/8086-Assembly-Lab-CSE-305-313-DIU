.MODEL SMALL
.STACK 100H
.DATA
    STR1 DB "AX > BX$"
    STR2 DB "BX > AX$" 
    STR3 DB "Both Are Equal$"

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX 

           

N:
    MOV AH, 4CH
    INT 21H              

MAIN ENDP
END MAIN
