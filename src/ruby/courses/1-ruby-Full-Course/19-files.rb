# ruby 19-files.rb

# <== READING A FILE ==>
# Method 1
file_tmp = File.open("data/employees.txt", "r")
for line in file_tmp do
    puts("> " + line)
end
file_tmp.close()  # ...

puts(file_tmp)  # File's still openned!

# Method 2 (Better)
File.open("data/employees.txt", "r") do |file|
    puts ("========== Step 1 - Open and close ==========")
    puts(file)
end
#puts(file)    # File2 is closed, will get an error

# Reading Chars
File.open("data/employees.txt", "r") do |file|
    puts ("========== Step 2 - Read char ==========")
    puts(file.readchar())
end

# Reading Lines
File.open("data/employees.txt", "r") do |file|
    puts ("========== Step 3 - Read line ==========")
    puts(file.readline())  # First line
    puts(file.readline())  # Second Line
    puts(file.readlines()[-1]) # Last line by index
end

# Looping Lines
File.open("data/employees.txt", "r") do |file|
    for line in file.readlines
        puts ("========== Step 4 - Read every Line ==========")
        puts(line)
    end
end

# <== WRITING ON A FILE ==>

# Appending on Files
File.open("data/dummy.txt", "a") do |file|
    file.write("\nRepeated, Data")
end

# Writing on Files
File.open("data/dummy.html", "w") do |file|
    file.write("<h1>OwO World!</h1>")
end

# Reading and Writing on Files
File.open("data/employees.txt", "r+") do |file|
    puts("========== Read and Write ==========")
    lines = []
    for line in file.readlines()
        lines.insert(-1, line)
    end
    file.write("\nCrash, Bandicoot")
    puts(lines)
end

# Overwritting on Files
File.open("data/employees.txt", "r+") do |file|
    puts("========== Read and Write ==========")
    file.readline()
    file.write("Say, Bye") # Overwrite over some characters (BAD)
end