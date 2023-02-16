# ruby 18-for-loop.rb

friends = ["Kevin", "Karen", "Oscar", "Angela", "Andy"]

puts("\n1 - List loop")
for friend in friends
    puts (friend)
end

puts("\n2 - List loop")
friends.each do |friend|
    puts (friend)
end

puts("\n1 - Range loop")
for index in (0..5)
    puts (index)
end

puts("\n2 - Range loop")
5.times do |index|
    puts(index)
end