CR equ 13; retorno de carro
LF equ 0Ah; inicio de linea
Datos Segment
    Mensaje db CR,LF,'Hola Mundo!',CR,LF,'$'
Datos Ends
Pila Segment stack
    db 64 DUP ('PILA')
Pila Ends
Codigo Segment
    holam proc far
    Assume CS:Codigo,DS:Datos,SS:Pila
    mov ax,Datos
    mov ds,ax
    lea dx,Mensaje
    mov ah,9
    int 21h
    mov ax,4c00h
    int 21h
    holam endp
Codigo Ends
end holam