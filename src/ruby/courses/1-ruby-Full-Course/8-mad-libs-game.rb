# ruby 8-mad-libs-game.rb

puts ("Enter a color: ")
color = gets.chomp().downcase()
puts ("Enter a plural noun: ")
# string.capitalize() = StRaNgE ~> Strange
pluralNoun = gets.chomp().capitalize()
puts ("Enter a person: ")
person = gets.chomp().capitalize()

puts ("Roses are " + color)
puts (pluralNoun + " are blue")
puts ("I love " + person)