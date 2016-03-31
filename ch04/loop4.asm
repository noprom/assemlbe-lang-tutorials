;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/3/31 3:49PM
;; Title: 计算ffff:0006H中的数乘以3，结果存在ds中

assume cs: code
code segment
  mov ax, 0ffffH
  mov ds, ax
  mov bx, 6   ;;以上，设置ds:bx指向ffff:6

  mov al, [bx]
  mov ah, 0   ;;以上，设置(al)=((ds)*16+(bx)),(ah)=0

  mov dx, 0   ;;设置寄存器清零
  mov cx, 3   ;;循环次数为3

s:add dx, ax
  loop s      ;;以上累加计算(ax)*3

  ;;程序返回
  mov ax, 4c00H
  int 21H
code ends
end
