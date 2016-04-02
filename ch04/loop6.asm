;; Author: noprom <tyee.noprom@qq.com>
;; Data: 2016/4/2 4:38PM
;; Title: 将内存ffff:0~ffff:b单元中的数据复制到0:200~0:20b单元中

assume cs: code
code segment
  mov bx, 0         ;;(bx) = 0,偏移地址从0开始
  mov cx, 12        ;;循环12次

s:mov ax, 0ffffh
  mov ds, ax        ;;(ds) = 0ffffh
  mov dl, [bx]      ;;(dl) = ((ds)*16+(bx)),将ffffh:bx中的数据送入dl

  mov ax, 0020h
  mov ds, ax        ;;(ds) = (0020h)
  mov [bx], dl      ;;((ds)*16+(bx)) = (dl),将dl中的数据送入0020:bx

  inc bx            ;;(bx) = (bx) + 1
  loop s

  mov ax, 4c00h
  int 21h
code ends
end
