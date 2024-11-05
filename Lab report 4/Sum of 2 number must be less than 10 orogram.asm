 .model small
  .stack 100h
  .data 
   
     a db 10,13," The sum of  :$"
     
     b  db 10,13,"and  :$"
     
     c db 10,13, "is :$" 
     
     d db ?
     e db ?
     
  .code  
  
  main proc  
    
    mov ax,@data
    mov ds,ax 
    
   
     
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al 
    
      mov ah,9
    lea dx,c
    int 21h
    
    add bl,bh
    sub bl,48
   
    
   
           
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:       
     
    mov ah,4ch 
    int 21h
    main endp
  end main
  
    



