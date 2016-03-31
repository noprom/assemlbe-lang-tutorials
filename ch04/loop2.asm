;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/3/31 3:20PM
;; Title: 利用loop计算123*236的小程序

assume cs: code
code segment
  mov ax, 0
  mov cx, 236

s:add ax, 123
  loop s

  ;;退出程序
  mov ax, 4c00H
  int 21H
code ends
end
