org 100h
         
    mov ax, 2
    cmp ax, 2 ; vertetohet me zbritje compare = 2 - 2= 0 dhe shkruhet ne ZF = 1
    je shuma ; nese ZF=1 shkon te shuma
    jmp fundi
    
    
    shuma:
    add ax, 8
    
    
         
fundi: ret