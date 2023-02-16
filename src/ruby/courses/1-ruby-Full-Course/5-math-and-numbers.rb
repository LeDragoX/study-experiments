# ruby 5-math-and-numbers.rb
num_a = 5.0
num_b = 2.0

# Printing Numbers
print ("A: ") 
puts  (num_a)
print ("B: ")
puts  (num_b)

# <== Printing Calcs ==>

print ("\nSum: ")
puts  (num_a + num_b)

print ("Subtraction: ")
puts  (num_a - num_b)

print ("Multiplication: ")
puts  (num_a * num_b)

print ("Division: ")
puts  (num_a / num_b)

# DEPRECATED
#print ("Exponential INT: ")
#puts  (5^2)

# NEW METHOD
print ("Exponential: ")
puts  (num_a ** num_b)

print ("Div. Remainder: ")
puts (num_a % num_b)

# Printing in one line, converting to String
puts ("Printing the value after converting to String: " + num_a.to_s())

# Initializing new variables
neg_num_a = -num_a
float_num_a = num_a + 0.7654321

# Printing more Numbers
print ("\nNegative A: ") 
puts  (neg_num_a)
print ("   Float A: ")
puts  (float_num_a)

puts ("\nAbsolute number: " + neg_num_a.abs().to_s())
puts (" Rounded Number: " + float_num_a.round().to_s()) # Statistically correct round number
puts ("    Ceil Number: " + float_num_a.ceil().to_s())  # Higher number
puts ("   Floor Number: " + float_num_a.floor().to_s()) # Lower Number

# Using Math Class methods
puts ("\n~> Math Class Methods")
puts ("Square Root from " + (num_a**2).round().to_s() + ": " + Math.sqrt(num_a**2).to_s())

puts ("Log (10 as base) from " + num_a.to_s() + ": " + Math.log10(num_a).to_s())