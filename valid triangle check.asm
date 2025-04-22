.MODEL SMALL
.STACK 100H
.DATA 
    VAR1 DW ?
    STRC1 DB "This Triangle VALID$"
    STRC2 DB "This Triangle INVALID$" 

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX  
    
    MOV AX, 1O
    MOV BX, 20
    MOV CX, 30
    
    
    MOV VAR1, AX
    ADD VAR1, BX
    
    CMP VAR1, CX
    JLE INVALID 
      
    
    MOV VAR1, BX
    ADD VAR1, CX
    
    CMP VAR1, AX
    JLE INVALID 
    
    
    
    MOV VAR1, CX                         
    ADD VAR1, AX
    
    CMP VAR1, BX
    JLE INVALID
    
    
VALID:
    MOV AH, 9
    LEA DX, STRC1
    INT 21H
    JMP N  
    
INVALID:
    MOV AH, 9
    LEA DX, STRC2
    INT 21H
    JMP N 
    
N:
    MOV AH, 4CH
    INT 21H
    
       
                

MAIN ENDP
END MAIN
