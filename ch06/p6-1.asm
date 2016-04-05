;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/5 3:32PM
;; Title: 将8个数据的和进行累加存放在ax中

assume cs: code
code segment
  ;; 定义数据,这些数据都在cs中,段地址为cs
  dw 0123h, 0456h, 0789h, 0abch, 0defh, 0fedh, 0cbah, 0987h

;; 指明程序的入口
start:  mov bx, 0 ;; 存放每次递增2
  mov ax, 0 ;; 存放累加的结果
  mov cx, 8 ;; 循环次数为8次
s:add ax, cs:[bx]
  add bx, 2
  loop s

  ;; 程序返回
  mov ax, 4c00h
  int 21h
code ends
end start
