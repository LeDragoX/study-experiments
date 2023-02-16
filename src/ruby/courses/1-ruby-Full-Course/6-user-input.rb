# ruby 6-user-input.rb

puts ("Enter your name: ")
# Avoid line breaking after inputing using '.chomp()' method
name = gets.chomp()

puts ("Enter your age: ")
age = gets.chomp()

puts ("Hello " + name + ", you're " + age + "! ^^")