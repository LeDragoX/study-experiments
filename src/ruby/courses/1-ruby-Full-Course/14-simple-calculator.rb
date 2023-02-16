# ruby 14-simple-calculator.rb

# Gets and check user input and return it
def getOp()
    puts ("+  = Sum")
    puts ("-  = Subtract")
    puts ("*  = Multiply")
    puts ("/  = Divide")
    puts ("** = Exponential")
    print ("Enter one operation: ")
    op = gets().chomp()

    # If 'op' is a String or equal "" or 'op' is "null"
    if (!op.is_a? String or op == "" or op.nil?)
        puts ("[E]: Invalid operation.")
        exit
    end

    # Return var
    return op
end

# Use the parameter to calc 2 nums
def calc(op = "+")
    print ("Enter a Number: ")
    num1 = gets().chomp().to_f
    print ("Enter another Number: ")
    num2 = gets().chomp.to_f

    result = nil
    # Execute one of all operations from before 
    if (op == "+")
        result = num1 + num2
        puts (num1.to_s + op + num2.to_s + " = " + result.to_s)
    elsif (op == "-")
        result = num1 - num2
        puts (num1.to_s + op + num2.to_s + " = " + result.to_s)
    elsif (op == "*")
        result = num1 * num2
        puts (num1.to_s + op + num2.to_s + " = " + result.to_s)
    elsif (op == "/")
        result = num1 / num2
        puts (num1.to_s + op + num2.to_s + " = " + result.to_s)
    elsif (op == "**")
        result = num1 ** num2
        puts (num1.to_s + op + num2.to_s + " = " + result.to_s)
    else
        # In case it receives an invalid 'op' entry
        puts ("[E]: Invalid operation.")
    end

    return result
end

# Pass 'op' to another var
op = getOp()
puts (op)

# Start calculating using 'op'
calc(op)