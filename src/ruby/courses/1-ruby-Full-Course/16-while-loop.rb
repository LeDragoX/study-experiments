# ruby 16-while-loop.rb

index = 1
limit = 10

# While the condition is true keep looping
while (index <= limit)
    puts("Index value: " + index.to_s)
    # To not get a infinite loop add +1 to the index current value 
    index += 1
end

puts("[OUT] Index value: " + index.to_s)
