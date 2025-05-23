        LXI H, 2000h    ; HL указывает на начало данных (2000h)
        MVI D, 10       ; Счётчик = 10 (0Ah)
        SUB A           ; Обнуляем аккумулятор (A=0)

LOOP:   ADD M           ; A += [HL]
        INX H           ; Переход к следующей ячейке
        DCR D           ; Уменьшаем счётчик
        JNZ LOOP        ; Повторяем, если D ≠ 0
        
        MOV M, A        ; Сохраняем результат в следующую ячейку (200Ah)
        HLT             ; Остановка процессора
