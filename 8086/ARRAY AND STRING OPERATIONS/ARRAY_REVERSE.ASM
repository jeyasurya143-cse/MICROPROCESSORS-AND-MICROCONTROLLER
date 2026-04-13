//reverse the array

                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
ARR DB 01H,02H,03H,04H,05H
COUNT DB 05H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
        MOV AX,DATA
        MOV DS,AX
        LEA SI,ARR
        LEA DI,ARR
        ADD DI,04H
        MOV CL,COUNT
L1:
        MOV AL,[DI]
        MOV [SI],AL
        INC SI
        DEC DI
        DEC CL
        JNZ L1
CODE ENDS
END
