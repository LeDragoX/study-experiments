puts "<== Loops ==>".upcase # Page 62

puts "before running everything, have those functions in mind:"
puts "
1. break  - get out from the loop
2. next   - go to the next iteration
3. return - get out from the loop and method where the loop is in
4. redo   - repeat the loop from start, without reavaliating the conditions or taking the next element"

def while1(i = 0)
    puts "|while1| i starting with #{i}"
    while i < 5
        puts "|while1| #{i+=1}"
    end
end

puts "|while1| Keep looping while i is lower than 5"
while1(0)

def for1(limit = 5)
    for i in (0..limit)
        puts "|for1| #{i}/#{limit}"
    end
end

puts "|for1| Keep looping while i is in the range 0 to 'limit' (5)"
for1(5)

def forTricks(limit = 5)
    for i in (0..limit) do
        break if i == 3
        puts "|forTricks| Break until 3 - #{i}"
    end

    for i in (0..limit) do
        next if i == 3
        puts "|forTricks| Next iteration on 3 - #{i}"
    end

    for i in (0..limit) do
        redo if i == 3

        puts "|forTricks| Redo everything on 3 - #{i}"
        break if i == 2 # Avoid infinite loop
    end
end

forTricks(5)

def until1(i = 0)
    until i == 5
        puts "|until1| #{i}"
        i += 1
    end
end

puts "|until1| Do something until condition true"
until1()