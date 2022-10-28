import strutils
import base64

var
  have1:string = "bmV"
  have2:string = "3U29j"
  have3:string = "a2V"
  have4:string = "0KCk="
  b64str: string

proc decrypt*() =
  #var
   #b64string = have1 & have2 & have3 & have4
  echo decode(have1 & have2 & have3 & have4)

decrypt()
