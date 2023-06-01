org 100h

   mov ah, 0eh
   mov al, 'P'
   int 10h ; 256 kombinime , 8 bit per numer te nderprejres
   mov al, 89h ; shkronja ë
   int 10h
   mov al,'r'  
   int 10h
   mov al, 's' 
   int 10h
   mov al, 'h'
   int 10h
   mov al, 89h
   int 10h  
   mov al, 'n' 
   int 10h
   mov al, 'd'
   int 10h
   mov al, 'e'
   int 10h
   mov al, 't'
   int 10h
   mov al, 'j'
   int 10h
   mov al, 'e' 
   int 10h 
   mov al, '!'
   int 10h
   


ret
