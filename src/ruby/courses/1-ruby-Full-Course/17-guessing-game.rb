# ruby 17-guessing-game.rb

guess_word     = "giraffe"
guess          = ""
guess_count    = 0
guess_limit    = 10
out_of_guesses = false

# Starting conditions to the loop
while (guess != guess_word and !out_of_guesses)
    # If the number of tries passes the limit, 'out_of_guesses' is true 
    if (guess_count < guess_limit) 
        print ("[ " + (guess_count+1).to_s + "/" + guess_limit.to_s + " ] Enter Guess: ")
        guess = gets().chomp()
        guess_count += 1
    else
        out_of_guesses = true
    end
end

# Determine if the user won or lost
if (out_of_guesses == true)
    puts ("YOU LOST!")
else  
    puts("YOU WON!")
end