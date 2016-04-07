;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/6 2:24PM
;; Title: 实验五(5):将a段和b段中的数据相加然后存放在c段中

assume cs: code
a segment
  db 1, 2, 3, 4, 5, 6, 7, 8
a ends
b segment
  db 1, 2, 3, 4, 5, 6, 7, 8
b ends
c segment
  db 0, 0, 0, 0, 0, 0, 0, 0
c ends
code segment
start:
  mov ax, a
  mov ds, ax ;设置a段的段地址

  mov ax, b
  mov es, ax ;设置b段的段地址

  mov ax, c
  mov ss, ax ;设置c段的段地址

  mov bx, 0
  mov cx, 8  ;循环次数为8
s:mov dl, ds:[bx]
  add dl, es:[bx]
  mov ss:[bx], dl
  inc bx
  loop s

  mov ax, 4c00h
  int 21h    ;程序返回
code ends
end start
