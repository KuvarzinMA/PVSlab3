LXI H, 0x0015    ; HL = ����� X1

MOV A, M         ; A = X1 (0x0A)
MOV D, A         ; D = X1 (0x0A)

INX H            ; HL = ����� X2 (0x0016)
MOV A, M         ; A = X2 (0x03)
MOV E, A         ; E = X2 (0x03)

INX H            ; HL = ����� X3 (0x0017)
MOV A, E         ; A = X2 (0x03)
SUB M            ; A = X2 - X3 = 0x03 - 0x05 = 0xFE (-2 � ���. ����)
MOV B, A         ; B = (X2 - X3) = 0xFE

MOV A, D         ; A = X1 (0x0A)
SUB B            ; A = X1 - (X2 - X3) = 0x0A - 0xFE = 0x0C (12)
; ������ ���: 0x0A - (-2) = 0x0A + 2 = 0x0C

INX H            ; HL = ����� X4 (0x0018)
SUB M            ; A = 0x0C - 0x02 = 0x0A (10)

INX H            ; HL = ����� Y (0x0019)
MOV M, A         ; ��������� Y = 0x0A (10)
HLT