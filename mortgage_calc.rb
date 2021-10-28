def prompt(string)
  puts "=> #{string}"
end

def valid_number?(num)
  /^\d+$/.match(num) || /^\d*+?\.\d*+?$/.match(num)
end

prompt("Welcome to the mortgage calculator!")

# Figuring out Loan Amount
loan = nil
loop do
  prompt("Let's begin, how much is the loan for?")
  loan = gets.chomp
  break if valid_number?(loan)
  prompt("That's not a valid number, please enter a number")
end

# Figuring out Annual Percentage Rate
apr = nil
loop do
  prompt("What's the annual percentage rate for this loan?")
  apr = gets.chomp
  apr.delete!("%")
  break if valid_number?(apr)
  prompt("That's not a valid number, please enter a number")
end

# Calculating Monthly Interest : Divide apr / 100 (percentage)
# then divide by months in a yr
monthly_interest = (apr.to_f / 100) / 12

# Figuring out loan duration
loan_duration = nil
loop do
  year = nil
  month = nil
  prompt("How long is the loan for? (Years and months)")

  loop do
    prompt("Years:")
    year = gets.chomp
    break if valid_number?(year)
    prompt("That's not a valid number, please enter a number")
  end

  loop do
    prompt("Months:")
    month = gets.chomp
    break if valid_number?(month)
    prompt("That's not a valid number, please enter a number")
  end
  # Turning years into months + adding months
  loan_duration = (year.to_i * 12) + month.to_i
  break
end

monthly_payment = loan.to_i * (monthly_interest /
(1 - (1 + monthly_interest)**(-loan_duration)))

prompt("Your monthly payment is #{monthly_payment}")
