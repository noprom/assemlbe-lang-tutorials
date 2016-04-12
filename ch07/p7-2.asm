;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/11 9:45AM
;; Title: 程序7.2:将datasg中第一个字符串转化为大写,第二个字符串转化为小写
assume cs: codesg, ds: datasg
datasg segment
  db 'BaSiC'
  db 'iNfOrMaTiOn'
datasg ends

codesg segment
start:
  mov ax, datasg
  mov ds, ax
  mov bx, 0               ;ds:bx指向'BaSiC'第一个字母

  mov cx, 5
s:mov al, [bx]
  and al, 11011111B       ;第五位变为0,转化为大写
  mov [bx], al            ;替换原来的内容
  inc bx
  loop s

  mov bx, 5               ;ds:bx指向'iNfOrMaTiOn'第一个字母
  mov cx, 11
p:mov al, [bx]
  or al, 00100000B        ;第五位变为1,转化为小写
  mov [bx], al            ;替换原来的内容
  inc bx
  loop p

  mov ax, 4c00h
  int 21h
codesg ends
end start
