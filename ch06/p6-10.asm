;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/11 8:40AM
;; Title: 实验五(6):用push指令将a段中的前8个字型数据逆序存储到b段中

assume cs: code
a segment
  dw 1, 2, 3, 4, 5, 6, 7, 8, 9, 0ah, 0bh, 0ch, 0dh, 0eh, 0fh, 0ffh
a ends
b segment
  dw 0, 0, 0, 0, 0, 0, 0, 0
b ends
code segment
start:
  
code ends
end start
