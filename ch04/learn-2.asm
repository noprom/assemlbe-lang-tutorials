;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/3/31 10:17AM
;; Title: 计算2^3的汇编小程序

;;指明程序中的段与寄存器的对应关系
assume cs: abc
;;定义一个叫做abc的段
abc segment
  mov ax, 2
  add ax, ax
  add ax, ax
  ;;标志程序结束
  mov ax, 4c00H
  int 21H
abc ends
;;程序结束
end
