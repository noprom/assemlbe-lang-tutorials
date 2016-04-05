;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/5 6:32PM
;; Title: 利用内存0:0~0:15依次改写程序中的数据,程序的传递利用栈来实现

assume cs: codesg
codesg segment
  dw 0123h, 0456h, 0789h, 0abch, 0defh, 0fedh, 0cbah, 0987h
  dw 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ;10个字单元用作栈空间

  start: mov ax, cs
         mov ss, ax
         mov sp, 24h;这里的关键是24h从哪里得来的?由代码的开始我们可以得知，
                    ;开始程序定义了18个字，所占用的内存空间为0~23h，栈顶值为23h。
                    ;而栈一开始是空的，所以sp的值要加1。所以就是24h了。
         mov ax, 0
         mov ds, ax
         mov bx, 0
         mov cx, 8
      s: push [bx]
         pop cs:[bx]      ;把ds:[bx]的数据送到栈中，又马上出栈到
                          ;cs:[bx]处，完全符合题意。
         add bx, 2
         loop s

      mov ax, 4c00h
      int 21h
codesg ends
end start
