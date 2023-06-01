include 'emu8086.inc'

org 100h      ;db define byte- 1byte , dw- 2 byte

jmp fillimi

mesazhi1 db 0Dh, 0Ah, 'Shkruani numrat brenda rangut: [-32768..3849]'       ;carriage return ,line feed ascii
        db 0Dh, 0Ah, 'Shkruani numrin e pare: $'
   
mesazhi2  db 0Dh, 0Ah, 'Shkruani numrin e dyte: $'

mesazhi3  db 0Dh, 0Ah, 'Shuma eshte: $'
mesazhi4 db 0Dh, 0Ah, 'Shumezimi eshte: $'

shuma dw ? 
shumezimi dw ?

fillimi:

;shtyp mesazhin e pare

mov dx, offset mesazhi1
mov ah, 9  
int 21h

call SCAN_NUM ; lexon nr e pare tastieres

mov shuma,cx  ; ruaje numrin e pare

; shtyp mesazhin e dyte
mov dx, offset mesazhi2
mov ah, 9
int 21h    

call SCAN_NUM ;lexo numrin e dyte prej tastieres
mov bx, cx ; ruaje numrin e dyte


;shtyp shumen ne konzole   
mov dx, offset mesazhi3
mov ah, 9
int 21h

mov   ax, shuma  
add ax, bx ;shtimi i du numrave
jo overflow ;kontrollo per overflow  

call PRINT_NUM

; shtyp shumezimin ne konzole
mov dx, offset mesazhi4
mov ah, 9
int 21h

mov ax, shuma
mul bx ;shumezo numrat
call PRINT_NUM


jmp fundi

; ne rast se ka overlow
overflow: 
    mov dx, offset mesazhi3
    mov ah, 9
    int 21h
    print 'kemi overflow!'
    


fundi:
;prit per shtypjen e ndonje tasti
mov ah, 0      
int 16h

ret

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS




    