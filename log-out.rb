puts "-" * 5
puts "Menu"
puts "-" * 5
puts "Hi #{first_name}, what would you like to do today?"
puts "-" * 3

puts "(D) - Account Deposit"
puts "(S) - Send Money"
puts "(W) - Withdrawal"
puts "(P) - Print Statement"
puts "(B) - Check Balance"
puts "(C) - Change Password"
puts "(L) - Logout"
goal = gets.chomp.upcase

if goal === "L"
  puts "Do you want to log-out?"
  puts "Yes"
  puts "or"
  puts "No"
  answer = gets.chomp.upcase
  if answer == "Yes"
    puts "-" * 35
    puts "| Welcome to Dark's ATM simulator |"
    puts "-" * 35
    puts "What would you like to do today?"
    puts "-" * 3

    puts "(U) - Sign up"
    puts "(I) - Sign in"
    puts "-" * 10
    goal = gets.chomp.upcase
  end
  puts "-" * 5
  puts "Menu"
  puts "-" * 5
  puts "Hi #{first_name}, what would you like to do today?"
  puts "-" * 3

  puts "(D) - Account Deposit"
  puts "(S) - Send Money"
  puts "(W) - Withdrawal"
  puts "(P) - Print Statement"
  puts "(B) - Check Balance"
  puts "(C) - Change Password"
  puts "(L) - Logout"
  goal = gets.chomp.upcase
end