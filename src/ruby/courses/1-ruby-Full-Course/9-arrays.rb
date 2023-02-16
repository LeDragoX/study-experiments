# ruby 9-arrays.rb

# Array List
friends = Array["Kevin", "Karen", "Oscar"]
puts (friends[-1])  # Last index
puts (friends[0, 2])
puts ("Sorted Friends: " + friends.sort().to_s())

# Initializing empty Array
people = Array.new

# Inserting Data
people.insert(0, "Steve")
people.insert(1, 1, 2, 3)

# Remove 1 element (Last to First)
people.pop(1)
puts (people.include? ("Steve"))

puts (people)