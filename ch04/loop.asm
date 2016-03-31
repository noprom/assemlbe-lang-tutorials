;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/3/31 3:09PM
;; Title: 计算2^12的汇编小程序

assume cs:code
code segment
  mov ax, 2
  ;;cx通常用来存放循环次数
  ;;loop执行循环的时候首先(cx)=(cx)-1,然后判断cx是否为零
  ;;如果cx中的值不为零则转到标号处执行，否则继续向下执行
  mov cx, 11
  ;;开始循环的部分
s: add ax, ax
  loop s

  ;;退出程序
  mov ax, 4c00H
  int 21H

code ends
end
