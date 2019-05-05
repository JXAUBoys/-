DATA SEGMENT
     hello  DB 'Hello World!$';
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
START:
    MOV AX,data ;     
    MOV DS,AX;
    LEA DX,hello;
    MOV AH,09h;
    INT 21h;
    MOV AX,4C00h;
    int 21h;
CODE ENDS
    END START
