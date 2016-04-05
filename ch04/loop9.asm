;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/5 2:42PM
;; Title: 将"mov ax, 4c00h"之前的指令复制到内存0:200处
assume cs: code
code segment
  

  ;; 程序返回
  mov ax, 4c00h
  int 21h
code ends
end
