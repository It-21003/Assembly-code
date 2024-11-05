.model small
.stack 100h 
.data
a db 'Nuarat Jahan Bindu $'
b db 10,13,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h 
    
    lea dx,b
    int 21h 
    
    mov cx,127
    mov bl,0
    
    print:
    mov ah,2
    inc cx
    cmp cx,255
    
    jg exit 
    
    mov dx,cx
    int 21h
    mov dx,32
    int 21h
    jmp go
    
    go:
    inc bl
    cmp bl,10
    je nl
    
    jmp print
    
    nl:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov bl,0
    jmp print  
    
    exit:
    mov ah,4ch
    int 21h  
    
main endp
end main