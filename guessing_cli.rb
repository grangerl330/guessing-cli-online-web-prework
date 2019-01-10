def run_guessing_game
  computer_number = rand 1..6
  input = ""
  while input != "exit"
    puts "Guess a number between 1 and 6."
    input = gets.chomp
    if input.to_i == computer_number
      puts "You guessed the correct number!"
    elsif input.to_i != computer_number && input.to_i != 0 
      puts "The computer guessed #{computer_number}."
    elsif input == "exit"
      puts "Goodbye!"
    end
  end 
end 

#Had to use && input.to_i != 0 on second elsif to account for when user inputs "exit". When a string of letters is operated on with to_i, it returns 0. We do not want this elsif to run when the user inputs exit, so we need the condition to include that input.to_i is not equal to 0 in order to run.