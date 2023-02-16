puts "<== Exception Treatment ==>".upcase   # Page 52

def exc3()
    begin
        print "#{num = 1} + "
        puts "#{str = "hi"}"
        num + str # Trigger
    rescue => exception
        puts "[E] #{exception.class}: #{exception}"
    ensure
        puts "Sh#t..."
    end
    
    puts "Program keep running"
end

def retry1()
    print "#{num1 = 1} + "
    puts "#{num2 = "two"}"
    begin
        puts "#{num1 + num2}"
    rescue => exception
        puts "[E] #{exception.class}: #{exception}"
        puts "[E] Where: #{exception.backtrace}"    # Backtrace
        num2 = 2
        retry   # Try again after fix
    end
end

def raise1()
    print "#{num1 = 1} + "
    puts "#{num2 = 1}"
    
    begin
        puts num1 + num2
        raise Exception.new("Expected 3") if num1+num2!=3   # Stop
    rescue => exception
        puts "[E] #{exception.class}: #{exception}"
        puts "[E] Where: #{exception.backtrace}"    # Backtrace
        num2 = 2
        retry
    end
    
end

def cause1()
    begin
        begin
            raise 'foo'
        rescue Exception => foo
            raise 'bar'
        end
    rescue Exception => bar
        puts "[E] #{bar.class}: #{bar}"
        puts "[E] This #{bar} was caused by #{bar.cause}"
    end
end

def customExc()        
    begin
        correct = "plinio"
        puts "Type my name: "
        name = gets.chomp.downcase
        raise NameNotEqual.new(name, correct) if name!=correct
        puts "Typed correctly!"
    rescue NameNotEqual => e
        puts e
    end
end

def catchthrow1()
    def get_input
        print "Type something (Number ends):"
        resp = gets
        puts "As you don't enter a number, it'll keep getting errors"
        throw :end_of_response, resp if resp.chomp =~ /^\d+$/
        resp
    end
        
    num = catch(:end_of_response) do
        while true
            get_input
        end
    end
    puts "Terminated with: #{num}"
end

exc3()
puts "\nSolving the code during exception"
retry1()
puts "\nSelf triggering errors if the result was not correct"
#raise1()   # Actually crashes
puts "\nSearching old errors"
cause1()

puts "\nMaking a custom exception"
puts "Using inheritance from the StandardError class"
class NameNotEqual < StandardError
    def initialize(current, expected)   # Takes variables from the method
        super "[E]: You've typed the wrong name (#{current.capitalize})! #{expected.capitalize} was expected."
    end
end

#customExc()    # Needs input (plinio)

puts "\nWe can compare exceptions"
puts "#{Exception.new == Exception.new}"
puts "#{Exception.new("hello") == Exception.new("world")}"
puts "Works with the custom exception that was created"
puts "#{NameNotEqual.new("eustaquio", "rangel") == NameNotEqual.new("eustaquio", "rangel")}"
puts "#{NameNotEqual.new("eustaquio", "rangel") == NameNotEqual.new("taq", "rangel")}"

catchthrow1()   # Needs input (type a number)