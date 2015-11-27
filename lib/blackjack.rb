 def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(hand)
  puts "Your cards add up to #{hand}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(hand)
    puts "Sorry, you hit #{hand}. Thanks for playing!"
end

def initial_round
  round_1 = deal_card + deal_card
  display_card_total(round_1)
  return round_1
  end

def hit?(hand)
  prompt_user
  if  get_user_input == 'h'
    (hand) + deal_card
  else
      (hand)
  end
  end

def invalid_command
  # code invalid_command here
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  until hand > 21
  new_hand = hit?(hand)
  display_card_total(new_hand)
  hand = new_hand
  end
  end_game(hand)
end

