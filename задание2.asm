LXI H, 2001h    ; ��������� ����� X2
MOV A, M        ; ������ X2 � A
CMA             ; NOT(X2)
MOV B, A        ; ��������� � B

INX H           ; ��������� � X3 (2002h)
MOV A, M        ; ������ X3 � A
CMA             ; NOT(X3)
ORA B           ; NOT(X2) OR NOT(X3)
MOV B, A        ; ��������� ��������� � B

LXI H, 2000h    ; ��������� ����� X1
MOV A, M        ; ������ X1 � A
XRA B           ; X1 XOR (NOT(X2) OR NOT(X3))
MOV B, A        ; ��������� ������������� ���������

LXI H, 2003h    ; ��������� ����� X4
MOV A, M        ; ������ X4 � A
XRA B           ; [X1 XOR (...)] XOR X4
STA 2004h       ; ��������� ��������� � Y (2004h)
HLT             ; ���������