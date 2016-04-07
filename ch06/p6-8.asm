;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/6 1:57PM
;; Title: 实验五(3):编写调试具有多个段的程序

assume cs: code, ds: data, ss: stack
;代码段
code segment
start:mov ax, stack
      mov ss, ax
      mov sp, 16

      mov ax, data
      mov ds, ax

      push ds:[0]
      push ds:[2]
      pop ds:[2]
      pop ds:[0]

      mov ax, 4c00h
      int 21h
code ends
;数据段
data segment
  dw 0123h, 0456h
data ends
;栈段
stack segment
  dw 0, 0
stack ends
end start
