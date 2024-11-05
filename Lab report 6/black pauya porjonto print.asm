
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

  .model small
  .stack 100h
  .data
     
   .code
   main  proc
    
    mov ah,1
    
    repeat:
    
     int 21h 
     cmp al,' '
    jne repeat
    
    
      
      mov ah,4ch    
        
      int 21h  
        
        
    main endp
    
   end  main


