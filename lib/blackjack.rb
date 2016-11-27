def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1 + rand(11)
end

def display_card_total(tot)
  puts "Your cards add up to #{tot}"
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
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(tot)
  prompt_user
  user_input = get_user_input
  if user_input == 's'
    tot
  elsif user_input == 'h'
    tot = tot + deal_card
  else
    invalid_command
  end

end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  sum = hit?(sum)
  display_card_total(sum)
  until sum > 21
    prompt_user
    move = get_user_input
    if move == 'h'
      sum = sum + deal_card
    else
      end_game(sum)
    end
  end
  end_game(sum)
end
