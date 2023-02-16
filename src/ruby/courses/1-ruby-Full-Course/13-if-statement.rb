# ruby 13-if-statement.rb

# <== PART 1 ==>
# Boolean value
isMale = true   # or false
isTall = false  # or true

# Checking if conditions are true
if (isMale and isTall)
    puts ("1.1 You're MALE and TALL...")
elsif (isMale and !isTall)  # ! = NOT something
    puts ("1.1.1 You're a SHORT MALE...")
elsif (!isMale and isTall)
    puts ("1.1.2 You're not MALE but TALL...")
else
    puts ("1.2 You're not MALE and not TALL...")
end

if (isMale or isTall)
    puts ("2.1 You're MALE or TALL...")
else
    puts ("2.2 You're not MALE and not TALL...")
end

# <== PART 2 ==>
    
def max(num1 = 1, num2 = 2, num3 = 3)
    if (num1 >= num2 and num1 >= num3)  # There are more comparators like != OR == OR <= OR < OR >
        return num1, "num1"
    elsif (num2 >= num1 and num2 >= num3)
        return num2, "num2"
    else
        return num3, "num3"
    end
end

puts (max(3, 2, 1).to_s)
puts ("Max number [Default]: " + max().to_s)