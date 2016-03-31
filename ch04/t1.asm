;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/3/31 11:44AM
;; Title: 实验3:编程、编译、链接、跟踪

assume cs: codesg

;;代码段定义开始
codesg segment
  mov ax, 2000H
  mov ss, ax
  mov sp, 0
  add sp, 10
  pop ax
  pop bx
  push ax
  push bx
  pop ax
  pop bx

  ;;程序返回
  mov ax,4c00H
  int 21H
codesg ends
;;程序结束
end
