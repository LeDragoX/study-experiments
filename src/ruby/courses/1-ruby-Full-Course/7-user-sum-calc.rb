# ruby 7-user-sum-calc.rb

puts ("Enter a number: ")
# Convert to float after getting the input '.to_f()'
num1 = gets.chomp().to_f()

puts ("Enter another number: ")
num2 = gets.chomp().to_f()

print (num1.to_s() + " + " + num2.to_s() + " = ")
puts  (num1 + num2)