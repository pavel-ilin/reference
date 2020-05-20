def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(current_card_total)
  prompt_user
  case get_user_input
  when"s"
  when "h"
    current_card_total += deal_card
  else
    invalid_command
    current_card_total = hit?(current_card_total)
  end

  return current_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  summ = initial_round
  while summ < 21
    summ = hit?(summ)
    display_card_total(summ)
  end
  end_game(summ)
end
