require 'socket'

s = TCPSocket.new 'djxmmx.net', 17
s.send '', 0

puts "\n#{s.recv 350}\n\n"
s.close