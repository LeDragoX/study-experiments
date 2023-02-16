puts "<== ARRAYS ==>"   # Page 41

array = [1, 2, 3, 4, 5]
puts "Two ways of printing"
puts array
puts "Better method"
puts "#{array}"

puts "Can store every type: #{array = [1, 2.3, "oi"]}"

puts "Methods when creating a new Array"
puts "1 - Common String Aray"
puts "#{array = ["um","dois","tres","quatro"]}"

puts "2 - String Array"
puts "#{array = %w(um dois tres quatro)}"

puts "3 - Symbol array"
puts "#{array = %i(um dois tres quatro)}"

puts "4 - By lenght"
puts "#{array = Array.new(5)}"

puts "5 - By lenght, value 0"
puts "#{array = Array.new(5, 0)}"

puts "Creating a string array, and check this behavior"
puts "#{array = Array.new(5, "oi")}"
array[0].upcase!
puts "#{array}"

puts "Use blocks to avoid this behavior"
puts "#{array = Array.new(5) { "oi" }}"
array[0].upcase!
puts "#{array}"

puts "New Array: #{array = [1, 2, 3, 4]}"
array.each { |numero| puts "O Array tem o numero #{numero}"}

puts "<== SUB ARRAYS ==>"
puts "#{a = %w(john paul george ringo)}"

puts "Can take by index position (0 to n)"
puts "#{a[0..1]}"
puts "#{a[-1]}"
puts "#{a.first}"
puts "#{a.take(2)}"
puts "Adding a new element: \n#{a.push("stu")}"
puts "Adding other element: \n#{a << "george martin"}"

puts "Digging inside Lists"
puts "#{array = [0, [1, [2, 3]]]}"
puts "#{array[1][1][0]}"
puts "Or with array.dig(args): \n#{array.dig(1, 1, 0)}"

puts "<== DUCK TYPING ==>"
puts "Having the << operator means that a Object can receive that"
puts "#{String.new.respond_to?(:<<)}"
puts "#{String.new.kind_of?(String)}"