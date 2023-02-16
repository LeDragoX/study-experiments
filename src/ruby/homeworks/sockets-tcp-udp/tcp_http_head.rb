require 'socket'

s = TCPSocket.new 'webcode.me', 80

s.write "HEAD / HTTP/1.0\r\n"
s.write "Host: webcode.me\r\n"
s.write "User-Agent: Console Http Client\r\n"
s.write "Accept: text/html\r\n"
s.write "Accept-Language: en-US\r\n"
s.write "Connection: close\r\n\r\n"

res = s.read
puts res

s.close