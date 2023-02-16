require 'socket'

port = (ARGV[0] || 8080.to_i)

server = TCPServer.new port

p server
puts "Server started on PORT #{port}"

loop do
  client = server.accept
  puts "Request: #{client.gets}"
  client.print "HTTP/1.1 200/OK\r\nContent-type: text/html\r\n\r\n"
  client.print "<html><body><h1>#{Time.now}</h1></body></html>\r\n"
  client.close
end