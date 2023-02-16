puts "<== STRING METHODS ==>"   # Page 36

str = "tente"
puts "Substring Pos. - #{str["nt"] = "st"}" # => "teste"

puts "Size - #{str.size}"               # => 5
puts "Capitalize - #{str.capitalize}"   # => "Teste"
puts "Upcase - #{str.upcase}"           # => "TESTE"
puts "Up > Downcase - #{str.upcase.downcase}"   # => "teste"

puts "Substitution1 - #{str.sub("t","d")}"      # => "deste"
puts "Substitution2 - #{str.gsub("t","d")}"     # => "desde"
puts "Reverse - #{str.reverse}"     # => "etset"
puts "Split - #{str.split("t")}"    # => ["","es","e"]
puts "Scan1 - #{str.scan("t")}"     # => ["t","t"]
puts "Scan2 - #{str.scan(/^t/)}"    # => ["t"]
puts "Scan3 - #{str.scan(/./)}"     # => ["t","e","s","t","e"]

puts "Filtering - #{"apenas um [teste]".gsub(/[\[\]]/, { "[" => "(", "]" => ")" })}"

puts "<== SYMBOLS ==>"
puts "#{:teste.class}"
puts "#{:teste.object_id}"