puts "<== REGULAR EXPRESSIONS ==>"  # Page 28

regex1 = /^[0-9]/
puts "#{regex1}"

regex2 = Regexp.new("^[0-9]")
puts "#{regex2}"

regex3 = %r{^[0-9]}
puts "#{regex3}"

puts "#{"1 teste" =~ regex1}"
puts "#{"outro teste" !~ regex1}"
puts "#{"1 teste" !~ regex1}"

puts "Other ways to test"

puts "#{regex1.match? "1 teste"}"
puts "#{regex1.match? "outro teste"}"

puts "Words starting with 'r'"                           #/i = not case sensitive
puts "#{"o rato roeu a roupa do rei de Roma".scan(/r[a-z]+/i)}"

puts "NOT using %r{}"
puts "#{/\Ahttp:\/\/(www\.)?eustaquiorangel\.com\z/ =~ "http://eustaquiorangel.com"}"

puts "Using %r{}"
puts "#{%r{http://(www\.)?eustaquiorangel\.com} =~ "http://eustaquiorangel.com"}"

puts "Can try with expression interpolation:"
host = "eustaquiorangel.com"
puts "#{%r{\Ahttp://(www\.)?#{host}\z} =~ "http://eustaquiorangel.com"}"

puts "<== GROUPS ==>"
puts "#{"Alberto Roberto" =~ /(\w+)( )(\w+)/}"

puts "#{$1}"
puts "'#{$2}'"
puts "#{$3}"

puts "<== NAMED GROUPS ==>"

matcher = /(?<objeto>\w{5})(.*)(?<cidade>\w{4})$/.match("o rato roeu a roupa do rei de Roma")
puts "#{matcher[:objeto]}"
puts "#{matcher[:cidade]}"

puts "#{"eustáquio" =~ /\A\w+\z/}"  # Invalid because of the accentuation
puts "#{"eustáquio" =~ /\A\p{Latin}+\z/}"   # returns 0