VALID_CHOICES = %w(r p s l sp)

def prompt(message)
  puts "=> #{message}"
end

def win?(hash_one, hash_two)
  if winners[hash_one][hash_two]
    true
  else
    false
  end
end

def choice_conversion(choice)
  if choice == 'r'
    :rock
  elsif choice == 'p'
    :paper
  elsif choice == 's'
    :scissors
  elsif choice == 'l'
    :lizard
  else
    :spock
  end
end

# Hash with combinations of winning
winners = {
  rock: {
    scissors: true,
    lizard: true
  },
  lizard: {
    paper: true,
    spock: true
  },
  spock: {
    scissors: true,
    rock: true
  },
  scissors: {
    paper: true,
    lizard: true
  },
  paper: {
    rock: true,
    spock: true
  }
}

options = <<-OPT


   r  = Rock
   p  = Paper
   s  = Scissors
   l  = Lizard
   sp = Spock
OPT

prompt("Welcome to Rock, Paper, Scissors, Lizard, or Spock")

loop do
  choice = ''
  loop do
    prompt("Please choose one of the following options: #{options}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice.downcase)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  if choice == computer_choice
    prompt("It's a tie!")
  elsif winners[choice_conversion(choice)][choice_conversion(computer_choice)]
    prompt("You win!")
  else
    prompt("Computer wins!")
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Bye!")
