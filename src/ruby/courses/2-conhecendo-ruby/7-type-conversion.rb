puts "<== TYPE CONVERSION ==>"  # Page 51
puts "Int to Float"
puts "#{1.to_f}"

puts "Int to String"
puts "'#{1.to_s}'"

puts "String to Int"
puts "#{"1".to_i}"

puts "String to Float"
puts "#{"1".to_f}"

puts "String to Symbol"
puts "#{"azul".to_sym}"

puts "Array to String"
puts "#{[1, 2, 3, 4, 5].to_s}"

puts "Array to String, with delimiter"
puts "#{[1, 2, 3, 4, 5].join(",")}"

puts "Range to Array"
puts "#{(0..10).to_a}"

puts "Hash to Array"
puts "#{{:john => "guitarra e voz" }.to_a}"

puts "<== BASE CONVERSION ==>"

puts "Int to Binary: #{2.to_s(2)}"
puts "Binary to Int: #{"10".to_i(2)}"
puts "Binary to Int: #{0b10.to_i}"
puts "Int to Hex: #{10.to_s(16)}"
puts "Hex to Int: #{0xa.to_i}"