puts "<== Logic Operators ==>".upcase   # Page 65

puts "a: #{a = 1}"
puts "b: #{b = 2}"

puts "c: #{c = a && b} (c = a && b)"
puts "c: #{c} (After)"
puts "d: #{d = a and b} (d = a and b) like ((d = a) and b)"
puts "d: #{d} (After)"

puts "On the case of 'd', if the leftmost value is not false, the value at the rightmost will not be stored"

puts "a: '#{a = nil}' Resetting 'a' for new operations"
puts "More 'short-circuit' operations:\n "
puts "a: #{a ||= 10} (a ||= 10)"
puts "a: #{a} (After)"

puts "a: #{a ||= 20} (a ||= 20)"
puts "a: #{a} (After)"

puts "The value of 'a' only changes if it's value is 'nil' or 'false'"
puts "Same as: #{a || a = 10} (a || a = 10)"

puts "Creating x and y        : #{x, y = (1..2).to_a} | X (#{x}) Y (#{y})"
puts "Reverting x and y values: #{x, y = [x, y].reverse} | X (#{x}) Y (#{y})"