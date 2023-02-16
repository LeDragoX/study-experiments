# ruby 12-return-statement.rb

def Exponential (number = 1, top = 2)
    result  = number ** top
    reverse = top ** number
    return result, reverse
    # After return it just jumps to 'end'
end

num = 5
top = 3

puts (Exponential(num, top))
# ==> 125
# ==> 243

# Gets only the first value
puts (Exponential(num, top)[0])
# ==> 125