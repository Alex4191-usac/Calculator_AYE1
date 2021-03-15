print macro parametro1 ; PRINT STRING MACRO
  mov ah, 09h
  mov dx , @data
  mov ds, dx
  mov dx, offset parametro1
  int 21h  
endm

getChar macro ; MACRO GET CHAR
    mov ah,01h
    int 21h
endm
