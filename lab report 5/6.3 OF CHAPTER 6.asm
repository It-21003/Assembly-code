
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
.model small
.stack 100h

.code
  main proc 
   
    
   
    
mov ah,1
int 21h
mov bl,al
int 21h
 
 

mov ah,2
cmp al,bl

ja level1
 

mov dl,al
int 21h
mov dl,bl
int 21h

jmp exit

level1 :
 

mov dl,bl
int 21h
mov dl,al
int 21h

 exit:
mov ah,4ch
int 21h

main endp
end main




