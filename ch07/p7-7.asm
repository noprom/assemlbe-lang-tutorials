;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/13 2:45PM
;; Title: 程序7.7:将数据段中的字符串的前四个字母转化为大写
assume cs: codesg, ds: datasg, ss: stacksg
datasg segment
  db '1. selt         '
  db '2. pela         '
  db '3. qelq         '
  db '4. rely         '
datasg ends

stacksg segment
  db 0, 0, 0, 0, 0, 0, 0, 0
stacksg ends
codesg segment
start:
  mov ax, stacksg
  mov ss, ax
  mov sp, 16

  mov ax, datasg
  mov ds, ax
  mov bx, 0

  mov cx, 4
s:push cx
  mov si, 0
  mov cx, 4
s0:mov al, [bx+3+si]
   and al, 1101111B
   mov [bx+3+si], al
   inc si
   loop s0

  pop cx
  add bx, 16
  loop s

  mov ax, 4c00h
  int 21h
codesg ends
end start
