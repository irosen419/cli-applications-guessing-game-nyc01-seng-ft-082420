# Randomly select a number from 1-6
def computer_num
  num = rand(6) + 1
end

# Prompts the user to choose a number from 1-6
def prompt_user
  puts "Please choose a number between 1 and 6"
end

# Collects user's input
def user_input
  input = gets.chomp
  if input == 'exit'
    return input
  else
    return input.to_i
  end
end
# Copmares the inputs from user and copmuter
# If user input is incorrect, allows user to choose until correct
def compare_inputs (user_num, comp_num)
  if user_num == comp_num
    puts "You guessed the correct number!"
  elsif user_num == "exit"
    puts "Goodbye!"
  else
    puts "Sorry! The computer guessed another number."
    prompt_user
    user_num = user_input
    compare_inputs(user_num, comp_num)
  end
end
# Runs the full guessing game, with targeted outputs based on results
def run_guessing_game
  comp_num = computer_num
  prompt_user
  user_num = user_input
  compare_inputs(user_num, comp_num)
end