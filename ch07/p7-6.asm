;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/13 2:20PM
;; Title: 程序7.6:将数据段中的所有字符串转化为大写字母
assume cs: codesg, ds: datasg, ss: stacksg
datasg segment
  db 'wel             '
  db 'you             '
  db 'doo             '
  db 'hav             '
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
  mov cx, 3
s0:mov al, [bx+si]
   and al, 1101111B
   mov [bx+si], al
   inc si
   loop s0

  pop cx
  add bx, 16
  loop s

  mov ax, 4c00h
  int 21h
codesg ends
end start
