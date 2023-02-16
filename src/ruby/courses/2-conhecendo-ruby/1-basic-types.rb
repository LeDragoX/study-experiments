# ruby 1-data-types.rb
puts("<== INTEGERS ==>")    # Page 22

puts((2**30)-1)
puts(((2**30)-1).class)

n = 1234
puts(n.object_id)

puts "Get number via object_id"
puts(n.object_id >> 1)

n1 = 1234
n2 = 1234

puts("Same value = same id")
puts(n1.object_id)
puts(n2.object_id)

#puts(1.methods.to_s)

puts "Can use _ to separate a number"
puts(1_234_567)

puts "<== FLOATING POINTS ==>"

f1 = 1.23
f2 = 1.23

puts "Share same id either"
puts f1.object_id
puts f2.object_id

puts "<== RATIONALS ==>"

puts Rational(1, 3)
puts "1/3".to_r * 9

puts "We can convert to float"
puts (1/3.to_r * 10).to_f
puts "Rounded number"
puts (1/3.to_r * 10).to_f.round(2)

puts "<== BOOLEANS ==>"

puts true.object_id
puts false.object_id

puts "<== NULL ==>"

empty = nil
puts nil.object_id
puts empty.nil?

puts "<== STRINGS ==>"

puts "o céu é \"azul\""
puts 'o céu é \'azul\''

puts "Creating long strings with heredoc"
str = <<FIM
criando uma String longa
com saltos de linha e
vai terminar logo abaixo.
FIM

puts str

s1 = "ola"
s2 = "ola"

puts "Different object_ids with strings"
puts s1.object_id
puts s2.object_id

puts "<== SUBSTRINGS ==>"

str = "string"
puts "Using relative index"

puts str[0..2]
puts str[-3..-1]

puts "Using .slice"
puts str.slice(0,2)

puts "<== STRING CONCATENATION ==>"

nome = "Eustáquio"
sobrenome = "Rangel"

puts nome + " " + sobrenome
puts nome.object_id

puts "Use the same memory space as 'nome'"
nome << " "

puts nome + "."
puts nome.object_id

puts "<== ENCODING ==>"
puts nome.encoding

puts nome.encode "iso-8859-1"
puts nome.encode("iso-8859-1").encoding

puts "<== VARIABLES ARE REFERENCES ==>"

nick = "TaQ"
other_nick = nick

puts "Change 'nick'"
puts "Before: #{nick} and #{other_nick}"
nick[0] = "S"
puts "After: #{nick} and #{other_nick}"

puts "<== FREEZING OBJECTS ==>"

puts "Freezing 'nick'"
nick.freeze

puts "'other_nick' was frozen either"
#nick[0] = "T"
#other_nick[0] = "T"
# 1-basic-types.rb:120:in `[]=': can't modify frozen String: "SaQ" (FrozenError)
#   from 1-basic-types.rb:120:in `<main>'

puts "We can still modify 'nick' in other variable"
new_nick = nick.dup
new_nick[0] = "T"
puts new_nick

s1 = "taq".freeze
s2 = "taq".freeze
puts s1.object_id
puts s2.object_id