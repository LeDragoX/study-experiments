puts "<== Control Structures ==>".upcase    # Page 58

def ifs1(i = 10)
    if (i == 10)
        puts "|ifs1| i [#{i}] = 10"
    else
        puts "|ifs1| i [#{i}] not = 10"
    end
end

puts "|ifs1| Common if structure"
ifs1(10)   # 10 == 10 (default) get true
ifs1(5)  # 5 != 10 get FALSE

def ifs2(i = 10)
    puts "|ifs2| i [#{i}] = 10" if i == 10
end

puts "|ifs2| With structure modifier"
ifs2(10)

def ifs3(i = 10)
    if i > 10
        puts "|ifs3| i [#{i}] is more than 10"
    elsif i == 10
        puts "|ifs3| i [#{i}] = 10"
    else
        puts "|ifs3| i [#{i}] is less than 10"
    end
end

puts "|ifs3| With elsif"
ifs3(20)
ifs3(10)
ifs3(-5)

def ifs4(i = 10)
    result =
    if i > 10
        "|ifs4| i [#{i}] is more than 10"
    elsif i == 10
        "|ifs4| i [#{i}] = 10"
    else
        "|ifs4| i [#{i}] is less than 10"
    end

    puts result
    return result
end

puts "|ifs4| Capturing the if inside a variable"
ifs4(70)

def unless1(weight = 100)
    puts "|unless1| #{weight} can sit here" unless weight > 100
end

puts "|unless1| Doing negative tests"
unless1(100)    # As the weight is set to be less than or equal 100 it passes
unless1(150)    # Differently from 100, this doesn't get output

def case1(i = 10)
    case i
    when 0..5
        puts "|case1| #{i} between 0 and 5" 
    when 6..10
        puts "|case1| #{i} between 6 and 10"
    else
        puts "|case1| #{i} Nani!?"
    end
end

puts "|case1| Using case when"
case1(1)
case1(8)
case1(9999)

def case2(i = 10)
    
    case i
    when Fixnum # Fixnum and Bignum are deprecated, these act as an Integer (in a simple way)
        puts "|case2| #{i.class} Number!"
    when String
        puts "|case2| #{i.class} String!"
    when (0..100)
        puts "|case2| #{i.class} Between 0 and 100!"    # Will never activate
    else
        puts "|case2| #{i.class} Nani?!"
    end
end

puts "|case2| Comparing types"
case2(10)
case2("Hello")
case2(["1", 2])

def comparisons1(value = 10)
    puts "\n|comparisons1| Is #{value} a Fixnum? #{Fixnum === value}"
    puts "|comparisons1| Is #{value} (#{value.class}) a Number (Regex)? #{/[0-9]/ === value}"
    puts "|comparisons1| Is #{value} inside a Range 0 to 10? #{(0..10) === value}"
    
end

puts "|comparisons1| Doing various comparisons"
comparisons1(1)
comparisons1(1.23)
comparisons1("123")