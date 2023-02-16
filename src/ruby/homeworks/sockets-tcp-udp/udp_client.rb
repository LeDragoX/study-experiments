# src/udp_client.rb
require 'socket'

def send_messages(username, s)
  username = "User" if username.nil? || username.chomp == ""
  exit_msg = "!exit"
  msg = ""

  puts "Type '#{exit_msg}' to exit"

  while msg != exit_msg
    msg = gets.chomp

    s.send username + ": " + msg, 0
    system("clear") || system("cls")

    puts s.recv 1024
  end
end

def main
  
  puts 'Set an username: '
  username = gets.chomp
  host = "127.0.0.1"
  port = 4444
  s = UDPSocket.new
  
  s.connect host, port
  send_messages(username, s)
  s.close

end

main()