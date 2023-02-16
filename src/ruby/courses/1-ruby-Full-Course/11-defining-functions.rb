# ruby 11-defining-functions.rb

# Print Hello 'User'
def SayHiUser()
    puts ("Hello User!!!")
end

# Same function, but with default parameters (Input)
def SayHi(name = "NoName", age = -1)
    puts ("Hello " + name + "! You are " + age.to_s())
end

SayHiUser()
SayHi() # Sending empty to test default values
SayHi("Plínio", 99)