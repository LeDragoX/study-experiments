# sd-6-drb-factorial-client.rb
require 'drb/drb'

def main
  host = 'localhost'
  port = 9999

  DRb.start_service
  remote_object = DRbObject.new_with_uri("druby://#{host}:#{port}")

  print("Insert a number: ")
  num = gets().chomp
  puts remote_object.factorial(num)
end

main()