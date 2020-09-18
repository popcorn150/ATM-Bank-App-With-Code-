puts "-" * 35
puts "| 🏦 Welcome to Dark's ATM simulator 🏦 |"
puts "-" * 35 
puts "\n"
puts "What would you like to do today?"
puts "-" * 3

puts "(O) - Open an account"
puts "(D) - Account Deposit"
puts "(S) - Send Money"
puts "(P) - Print Statement"
puts "(B) - Check Balance"
puts "(C) - Change Password"
puts "-" * 30

puts "What would you like to do today?"
goal = gets.chomp.upcase



  if goal == "O"
    puts "Open an account"
  elsif (goal == 'D') || (goal == 'd')
    puts "Deposit money into your account"
  elsif (goal == 'S') || (goal == 's')
    puts "Send money"
  elsif (goal == 'P') || (goal == 'p')
    puts "Print a statement"
  elsif (goal == 'B') || (goal == 'b')
    puts "Check your account balance"
  elsif (goal == 'C') || (goal == 'c')
    puts "Change your password"
  else
    puts "Invalid option, please check you options and try again.."
    goal = gets.chomp
  end

#  case goal
#  when (goal == "O") || (goal == "o")
#    puts "Open account"
#  when (goal == 'D') || (goal == 'd')
#    puts "Deposit money"
#  when (goal == 'S') || (goal == 's')
#    puts "Send money"
#  when (goal == 'P') || (goal == 'p')
#    puts "Print a statement"
#  when (goal == 'B') || (goal == 'b')
#    puts "Check your account balance"
#  when (goal == 'C') || (goal == 'c')
#    puts "Change your password"
#  else
#    puts "Invalid option, please check your options and try again.."
#    goal = gets.chomp
#  end
