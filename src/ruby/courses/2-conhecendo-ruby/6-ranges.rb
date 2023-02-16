puts "<== RANGES ==>"   # Page 46

puts "Creating a range interval 0 to 10"
puts "#{range1 = (0..10)}"
puts "#{range1.each { |valor| print "#{valor} " }}"

puts "Creating a range interval 0 to 9"
puts "#{range2 = (0...10)}"
puts "#{range2.each { |valor| print "#{valor} " }}"

puts "Can use ranges with strings"
puts "#{("a".."z").each { |valor| print "#{valor} " }}"
puts "#{("ab".."az").each { |valor| print "#{valor} " }}"

puts "Using as Array"
puts "#{("a".."z").to_a}"
