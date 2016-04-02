;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/2 3:55PM
;; Title: 计算ffff:0~ffff:b的累加和，并将结果存放到16位寄存器dx中

assume cs: code
code segment
  mov ax, 0ffffh
  mov ds, ax
  mov bx, 0       ;;初始化ds:bx指向ffff:0

  mov dx, 0       ;;初始化累加寄存器(dx)=0
  mov cx, 12      ;;初始化循环计数寄存器cx,(cx)=0

s:mov al, [bx]
  mov ah, 0
  add dx, ax      ;;间接向dx中加上((ds)*16+(bx))单元的数值
  inc bx          ;;使ds:bx指向下一个单元
  loop s

  mov ax, 4c00h
  int 21h
code ends
end
