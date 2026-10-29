org 7C00h

start:
    mov ax, 0B800h   
    mov es, ax       
    xor di, di       

    mov cx, 2000     
    mov al, 21h      
    mov ah, 0Ch      

fill_screen:
    stosw            
    loop fill_screen 

    jmp $

times 510 - ($ - $$) db 0
dw 0xAA55
