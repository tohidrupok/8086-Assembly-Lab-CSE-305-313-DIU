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

    MOV AX, 30
    MOV BX, 30
    
    CMP AX, BX          
    JNG ELSEIF           
    
IF: 
    MOV AH, 9
    LEA DX, STR1         
    INT 21H              
    JMP N                
    
ELSEIF:
        CMP BX, AX           
        JNG ELSE             
        
        MOV AH, 9
        LEA DX, STR2         
        INT 21H              
        JMP N                
    
ELSE:
    MOV AH, 9
    LEA DX, STR3         
    INT 21H              

N:
    MOV AH, 4CH
    INT 21H              

MAIN ENDP
END MAIN
