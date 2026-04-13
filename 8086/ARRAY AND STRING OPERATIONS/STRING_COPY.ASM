//string copy

        OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
STR1 DB 'HELLO'
STR2 DB '     '
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
        MOV AX, DATA
    MOV DS, AX
        MOV ES , AX
        LEA SI, STR1
    LEA DI, STR2
    MOV CX, 05H
L1:
        MOV AL, [SI]
    MOV [DI], AL
    INC SI
    INC DI
        LOOP L1
        HLT
CODE ENDS
END
