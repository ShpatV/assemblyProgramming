org 100h
   
   ;procedura shuma e cila llogarit 2+3. Vlerat 2 dhe 3 barten te procedura shuma si parametra
   
   mov ax, vlera1
   mov bx, vlera2
   push ax
   push bx
   call shuma
ret 

vlera1 dw 2 ;definoj 2 byte 
vlera2 dw 3  

    shuma proc
        push bp ;vlera fillestare base pointer
        mov bp, sp ; stack pointer ne base pointer
        mov dx, [bp + 6]
        add dx, [bp + 4]
        mov sp, bp
        pop bp
        ret 3      
    shuma endp