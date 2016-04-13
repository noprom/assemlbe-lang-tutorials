;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/13 10:54AM
;; Title: 程序7.5:将datasg中第一个字符串复制到第二个字符串,简便算法实现
assume cs: codesg, ds: datasg
datasg segment
  db 'welcome to masm!'
  db '................'
datasg ends

codesg segment
start:
  mov ax, datasg
  mov ds, ax
  mov si, 0

  mov cx, 8
s:mov ax, 0[si]
  mov 16[si], ax
  add si, 2
  loop s

  mov ax, 4c00h
  int 21h
codesg ends
end start
