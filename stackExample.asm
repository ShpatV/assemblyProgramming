org 100h
   
   
   mov ax, 1
   mov bx, 5
   
   call shuma    
   jmp fundi ;parandalimi per heren e dyt
   
   
   shuma proc ;{ 
    add ax, bx
    
    ret
             
             
   shuma endp ;}   
   

fundi : ret   
