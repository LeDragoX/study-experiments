# ruby 10-hashes.rb

# Like Dictionary from other languages
states = {
    # Key => Value,
    "Rio De Janeiro" => "RJ",
    "Bahia" => "BA",
    "Paraná" => "PR",
}

numbers = {
    # Showing other ways to declare a Key
    1 => "Number One",
    :One => 1    
}

puts (states)
puts (states["Paraná"])
puts (numbers[1])
puts (numbers[:One])