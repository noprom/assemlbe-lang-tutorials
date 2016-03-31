assume cs:codesg

;;下面是代码段的定义
codesg segment
  mov ax, 0123H
  mov bx, 0456H
  add ax, bx
  add ax, ax

  ;;下面两行代码实现了程序的返回
  mov ax, 4c00H
  int 21H
codesg ends

;;整个程序的结束标记符号
end
