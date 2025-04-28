LXI H, 2001h    ; Загружаем адрес X2
MOV A, M        ; Читаем X2 в A
CMA             ; NOT(X2)
MOV B, A        ; Сохраняем в B

INX H           ; Переходим к X3 (2002h)
MOV A, M        ; Читаем X3 в A
CMA             ; NOT(X3)
ORA B           ; NOT(X2) OR NOT(X3)
MOV B, A        ; Сохраняем результат в B

LXI H, 2000h    ; Загружаем адрес X1
MOV A, M        ; Читаем X1 в A
XRA B           ; X1 XOR (NOT(X2) OR NOT(X3))
MOV B, A        ; Сохраняем промежуточный результат

LXI H, 2003h    ; Загружаем адрес X4
MOV A, M        ; Читаем X4 в A
XRA B           ; [X1 XOR (...)] XOR X4
STA 2004h       ; Сохраняем результат в Y (2004h)
HLT             ; Остановка
