require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  num = rand(1..11)
  num
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  input
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
  
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input == "h"
    current_total += deal_card
  elsif input == "s"
    current_total
  else
    invalid_command
    prompt_user
    input = get_user_input
  end

  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  current_total = initial_round
  until current_total > 21 do
  current_total = hit?(current_total)
  display_card_total(current_total)
  end
end_game(current_total)
end
    
