.model small
.stack 100h
.data

  msg1 db 'odd number$'
  msg2 db 'even number$'
.code
main proc

  mov ax,@data
  mov ds,ax

  mov ah,1
  int 21h

   mov bl,al

   cmp bl,'1'
   je odd
   cmp bl , '3'
   je odd
  cmp bl,'2'
  je check

odd:
  lea dx,msg1
  mov ah,9
  int 21h
  jmp exit

check:
  mov ah,1
  int 21h
  cmp al,'4'
   je even1
   jmp exit

even1:
    lea dx,msg2
     mov ah,9
     int 21h

exit:
   mov ah,4ch
  int 21h

main endp

     end main
