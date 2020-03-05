def run_guessing_game
  computer_guess = rand(1..6) + 1
  user_guess = gets.chomp

  if user_guess.to_i == computer_guess
    puts "You guessed the correct number!"
  elsif user_guess.to_i != computer_guess and user_guess != "exit"
    puts "Sorry! The computer guessed #{computer_guess}."
  else user_guess == "exit"
    puts "Goodbye!"
  end
end
