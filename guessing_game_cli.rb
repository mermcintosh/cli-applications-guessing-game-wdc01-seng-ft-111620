def run_guessing_game
  $computerNumber = 0
  $userGuess = ""
  $gameStatus = "playing"
  
  while $gameStatus == "playing" do
    getUserNumber()
    getComputerNumber()
    # Compare that input to the random number that has been generated
    case $userGuess
      when "exit"
        # It the user's input is equal to "exit": Goodbye!
        $gameStatus = "finished"
        puts "Goodbye!"
      when $computerNumber
        # If the user's input matches the random number: You guessed the correct number!
        puts "You guessed the correct number!"
        $gameStatus = "finished"
      else
        # If the user's input DOES NOT matches the random number: Sorry! The computer guessed <number>.
        puts "Sorry! The computer guessed #{$computerNumber}."
        $gameStatus = "finished"
    end
  end

end

def getComputerNumber
  # Generate and store a random number between 1 and 6
  $computerNumber = rand(6).to_s
end

def getUserNumber
  # Prompts the user to guess their own number between 1 and 6
  # Capture user input from the command line
  puts "Guess a number between 1 and 6.\n"
  $userGuess = gets.chomp
end