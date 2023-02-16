puts "<== HASHES ==> (Like Dictionaries)"   # Page 47
puts "Hashes are like Indexed Arrays, using a key and value"
hash = { 
    #Key    =>  value
    :john   => "guitarra e voz",
    :paul   => "baixo e voz",
    :george => "guitarra",
    :ringo  => "bateria"
}
puts "#{hash}"
puts "Acessing direct values"
puts "#{hash[:george]}"

puts "#{h1 = { "name" => "John" }}"
puts "#{h2 = { "name" => "Paul" }}"

puts "When the key is a string, it behaviour same as a frozen string"
puts "#{h1.keys.first.object_id} and #{h2.keys.first.object_id}"

puts "#{hash = { "Integer" => 1, :float => 1.23, 1 => "um" }}"
puts "#{hash["Integer"]}, #{hash[:float]}, #{hash[1]}"

puts "Creating hashes with default values"
puts "#{hash = Hash.new(0)}"
puts "Requesting new key"
puts "#{hash[:um]}"
puts "#{hash[:dois]}"

puts "Trying with other value"
puts "#{hash = Hash.new(Time.now)}"
puts "#{hash[:um]}"
sleep(1)
puts "#{hash[:dois]}"
sleep(1)

puts "Using blocks to dynamically generate the time"
puts "#{hash = Hash.new { Time.now }}"
puts "#{hash[:um]}"
sleep(1)
puts "#{hash[:dois]}"

puts "Another way to create hashes"
puts "#{
    hash = {
        john: "guitarra e voz",
        paul: "baixo e voz",
        george: "guitarra",
        ringo: "bateria"}
    }"

puts "Like Arrays, we can 'dig'"
puts "#{hash = { a: { b: { c: 3 } } }}"
puts "#{hash[:a][:b][:c]}"
puts "Or: #{hash.dig(:a, :b, :c)}"