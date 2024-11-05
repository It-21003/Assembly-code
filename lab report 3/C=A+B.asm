.model small
  .stack 100h
  .data 
  
     msg1 db "Enter A :$"
     
     msg2 db 10,13, "Enter B :$"
     
     msg3 db 10,13,"sum is a=b-a-1 the result is : $" 
       
     C db ?
     .code
     main proc
        
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg1
        int 21h
        
        mov ah,1
        int 21h 
        mov bl,al
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,1
        int 21h 
        mov cl,al  
        
        sub cl,bl  
        
        sub cl,1
        
        add  cl,30h
        int 21h  
        
        
        
        mov  C,bl
        
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,2
        mov dl,C
        int 21h 
       
    
        
    mov ah,4ch 
    int 21h
    main endp
  end main
