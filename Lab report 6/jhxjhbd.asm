
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

   .model small
   .stack 100h
    .data
     
   .code
   main  proc
        
    mov cx,80
    
    mov ah,2
     mov dl,'*'
      top:
      
      int 21h
      loop top
      
      
      mov ah,4ch    
        
      int 21h  
        
        
    main endp
    
   end  main
    
   
  




