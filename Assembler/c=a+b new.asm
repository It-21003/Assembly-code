
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
   .stack 100h
   .data
   
   msg1 db 'input a $'
    msg2 db 10,13,'input b $'  
    msg3 db 10,13,'c=a+b result is  : $' 
    
    a db ?
    b db ? 
    c db ? 
    
    .code 
    
    main proc
        mov ax,@data
        mov ds,ax
        
        
        mov ah,9
        lea dx,msg1
        int 21h
        
        mov ah,1
        int 21h
        mov a,al
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,1
        int 21h
        
        add al,a
        
        sub al,30h
       
         mov c,al
     
        
        
         
         mov ah,9
         lea dx,msg3
         int 21h
        
        mov ah,2 
        mov dl,c
        int 21h
        
        mov ah,4ch
        int 21h
        main endp
    end main
    
       





