;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/13 10:27AM
;; Title: 程序7.3:将datasg中第一个字符串转化为大写,第二个字符串转化为小写,用数组的方式实现
assume cs: codesg, ds: datasg
datasg segment
  db 'BaSiC'
  db 'iNfOrMaTiOn'
datasg ends

codesg segment
start:
  mov ax, datasg
  mov ds, ax
  mov bx, 0

  mov cx, 5
s:mov al, [bx]
  and al, 1101111B
  mov [bx], al
  mov al, [5+bx]
  or al, 0010000B
  mov [5+bx], al
  inc bx
  loop s

  mov ax, 4c00h
  int 21h
codesg ends
end start
