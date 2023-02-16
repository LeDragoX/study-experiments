# src/udp_echo_server.rb
require 'socket'

host = "127.0.0.1"
port = 4444
session_msgs = ""
bytes = 1024

puts "Starting the server on the HOST #{host} and PORT #{port}"

Socket.udp_server_loop port do |data, src|
  session_msgs = "" if session_msgs.length > bytes
  session_msgs << "\n" + data
  src.reply session_msgs
  puts data
end