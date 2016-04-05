;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/5 2:02PM
;; Title: 向内存0:200~0:23F依次传送数据0~63(3FH)

assume cs: code
code segment
  mov ax, 20h
  mov ds, ax

  mov bx, 0h
  mov cx, 64
s:mov [bx], bl
  inc bx
  loop s
code ends
end
