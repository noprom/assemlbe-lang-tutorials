;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/11 9:24AM
;; Title: 程序7.1

assume cs: code, ds: data
data segment
  db 'unIX'
  db 'foRK'
data ends

code segment
start:
  mov al, 'a'
  mov bl, 'b'

  mov ax, 4c00h
  int 21h
code ends
end start
