# ruby 4-manipulating-strings.rb

# Quotation mark inside a string
phrase = "They see me \"Rolling\"..."

# Put variable 'phrase' + new line phrase
puts (phrase + "\nThey Hattin'...")

# <== Methods ==>

# CONVERTS THE STRING LIKE THIS (High Case Letters)
puts (phrase.upcase())

# converts the string like this (Low Case Letters)
puts (phrase.downcase())

phrase = "        " + phrase + "   "
# New Phrase
puts (phrase)

# Removes white spacing
puts (phrase.strip())

# Actually changing the variable
phrase = phrase.strip()

# Getting the lenght of a String
print ("Lenght: ")
puts  (phrase.length())

# Checking words on Strings
puts (phrase.include? "see")    # Returns TRUE
puts (phrase.include? "what")   # Returns FALSE

# Getting parts by Index
# 0 .. n    means Start to the End
# -1 .. -n  means End to the Start
puts (phrase[0])

# Gets a range Up to 0 but not including 4
puts (phrase[0, 4])

# Get letter(s) starting index
puts (phrase.index("T"))    # First letter = 0

# Strings can be manipulated outside Variables
puts ("Ruby".upcase)