import strutils
import base64
import net

var
  ip = "127.0.0.1"
  port = Port(8080)
  have1:string = "bmV"
  have2:string = "3U29j"
  have3:string = "a2V"
  have4:string = "0KCk="
  socket: Socket

proc decrypt*() =
  #var
   #b64string = have1 & have2 & have3 & have4
  socket = decode(have1 & have2 & have3 & have4)
  socket.connect(ip, port)

decrypt()
