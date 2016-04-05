;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/5 4:32PM
;; Title: 利用栈将程序中定义的数据逆序存放

assume cs: codesg
codesg segment
  dw 0123h, 0456h, 0789h, 0abch, 0defh, 0fedh, 0cbah, 0987h
  dw 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                            ;;用dw定义16个字型单元的数据,在程序加载之后,将取得
                            ;;这16个字的内存空间,存放这16个数据,后面利用这段空间当做栈来使用
;;程序开始
start: mov ax, cs
       mov ss, ax           ;;在这里我们使用cs:10~cs:2F的空间作为栈来使用
       mov sp, 30h          ;;设置栈顶ss:sp指向cs:30,首先应该指向栈底

       mov bx, 0
       mov cx, 8
    s: push cs:[bx]
       add bx, 2
       loop s               ;;将以上代码段0～15单元中的8个字型数据依次入栈

       mov bx, 0
       mov cx, 8
   s0: pop cs:[bx]
       add bx, 2
       loop s0              ;;以上依次出栈8个字型数据到代码段0~15单元中

    mov ax, 4c00h
    int 21h                 ;;程序返回
codesg ends
end start
