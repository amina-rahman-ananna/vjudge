.model small
.stack 100h

.data 
  msg1 db 'Enter three uppercase Letters:$'
  msg2 db 'In lowercase they are: $'

   var1 db ?
   var2 db ?
   var3 db ?

.code
main proc

mov ax,@data
mov ds,ax ;  initialize ds

;display msg 1

   lea dx,msg1
   mov ah,9
   int 21h
   
   ;input 

mov ah, 1
int 21h

mov var1,al

mov ah, 1
int 21h

mov var2,al

mov ah, 1
int 21h

mov var3,al

;new line 

  mov dl, 0ah
  mov ah, 2
  int 21h
  
 ;display msg2
 
  lea dx,msg2
  mov ah,9
  int 21h
  
  
  ;new line
  
 mov dl,0ah
 mov ah,2
 int 21h
 
 ;conversion
 
 add var1,32
 add var2,32
 add var3,32
 
 ;output 1
 mov dl,var1
 mov ah,2
 int 21h
 
 ;new line
  
 mov dl,0ah
 mov ah,2
 int 21h
 
 ;output 2
 mov dl,var2
 mov ah,2
 int 21h
 
 ;new line
  
 mov dl,0ah
 mov ah,2
 int 21h
 
 ;output 3
 mov dl,var3
 mov ah,2
 int 21h
 
 ;new line
  
 mov dl,0ah
 mov ah,2
 int 21h
 
 ;return to dos
 
 mov ah,4ch
 int 21h
 
 main endp
 end main
