puts "-" * 35
puts "| Welcome to Dark's ATM simulator |"
puts "-" * 35
puts "What would you like to do today?"
puts "-" * 3

puts "(U) - Sign up"
puts "(I) - Sign in"
puts "-" * 10
goal = gets.chomp.upcase


if goal === "U"
  puts "-" * 11
  puts "New Account"
  puts "-" * 11

  puts "Let's get you started, please answer the following questions:"
  puts "-" * 3
  puts "First Name:"
  first_name = gets.chomp
  puts "-" * 15

  puts "Last Name:"
  last_name = gets.chomp
  puts "-" * 15

  puts "Date of Birth(YY-MM-DD):"
  date_of_birth = gets.chomp
  puts "-" * 15

  puts "Phone Number:"
  phone_number = gets.chomp
  puts "-" * 15

  puts "Email"
  email = gets.chomp
  puts "-" * 15

  puts "House Address"
  house_address = gets.chomp
  puts "-" * 15

  puts "Choose a Password"
  password1 = gets.chomp
  puts "-" * 15
  
  puts "Confirm password"
  confirm_password = gets.chomp
  puts "-" * 15
  while confirm_password != password1
    puts "Sorry incorrect password, try again!"
    confirm_password = gets.chomp
  end
 puts "-" * 23
 puts "Registration Successful"
 puts "-" * 23
 puts "Welcome #{last_name} #{ first_name}, your account has been created successfully."

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
 goal = gets.chomp

elsif goal === "I"
  puts "-" * 35
  puts "| Welcome to Dark's ATM simulator |"
  puts "-" * 35

  puts "Enter your Email address"
  email2 = gets.chomp
  if email2 != email
    puts "Incorrect Email address, please enter your email address and try again.."
    puts "Enter your Email address"
    email2 = gets.chomp
  end

  puts "Enter your password"
  password = gets.chomp

  password_count = 1
  while password != password1
    if password_count == 3
      puts "Sorry your account has been blocked! Please contact your bank."
      exit
    end
    puts "Incorrect password 2 attempts left and your account will be blocked."  
   password = gets.chomp
   password_count = password_count + 1

   if password_count == 3
    puts "Sorry your account has been blocked! Please contact your bank."
    exit
  end
    puts "Incorrect password 1 attempts left and your account will be blocked."
    password = gets.chomp

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
end

balance = 0
if goal === "D"
  puts "-" * 23
  puts "Account Deposit"
  puts "-" * 23

  puts "Enter a deposit amount"
  deposit_amount = gets.chomp
  balance = deposit_amount.to_i
  puts "$#{deposit_amount} was succefully deposited in your account. Your current account balance is now $#{balance}."

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
 goal = gets.chomp
end

if goal === "S"
  puts "-" * 10
  puts "Send Money"
  puts "-" * 10

  puts "Hi #{first_name}, would you like to send money to someone?"
  puts "yes"
  puts "or"
  puts "no"
  answer = gets.chomp
  if answer === "no"
    puts "Thank you for banking with us..."
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
    goal = gets.chomp
  end
  puts "Enter the receiving account number"
  receiving_account_number = gets.chomp
  if receiving_account_number.length != 23
    puts "This is an invalid account number, user not found."
    puts "Please enter a valid account number to send money."
    receiving_account_number = gets.chomp
  end
  puts "Enter the amount you wish to send:"
  sending_amount = gets.chomp.to_i
  if sending_amount.to_i > balance.to_i
    puts "Insufficient fund, please deposit in your account and try again."
    sending_amount = gets.chomp.to_i
  end
  puts "Enter a name for the receiver"
  receiver_name = gets.chomp

  puts "Are you sure you want to send $#{sending_amount} to #{receiver_name}?"
  puts "yes"
  puts "or"
  puts "no"
  answer = gets.chomp
  if answer === "no"
    puts "Thank you for banking with us..."
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
  puts "Enter your password to confirm"
  password = gets.chomp

  password_count = 1
  while password != password1
    if password_count == 3
      puts "Sorry your account has been blocked! Please contact your bank."
      exit
    end
    puts "Incorrect password 2 attempts left and your account will be blocked."
    
   password = gets.chomp
   password_count = password_count + 1

   if password_count == 3
    puts "Sorry your account has been blocked! Please contact your bank."
    exit
  end
  puts "Incorrect password 2 attempts left and your account will be blocked."
  password = gets.chomp
  password_count = password_count + 1
   balance = balance.to_i - sending_amount.to_i
   puts "$#{sending_amount} was successfully sent to #{receiver_name}. You current account balance is now $#{balance}."

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


if goal === "W"
  puts "-" * 23
  puts "Account Withdrawal"
  puts "-" * 23

  puts "Enter a withdrawal amount:"
  withdrawal_amount = gets.chomp

  while withdrawal_amount > balance
    puts "Sorry, insuffient funds, try again"
    withdrawal_amount = gets.chomp.to_i
    puts "Please wait while your transcation is processing."
  end
  puts "Enter your password to confirm"
  password = gets.chomp

  password_count = 1
  while password != password1
  if password_count == 3
      puts "Sorry your account has been blocked! Please contact your bank."
      exit
    end
    puts "Incorrect password 2 attempts left and your account will be blocked."
    
   password = gets.chomp
   password_count = password_count + 1
  end
  balance = balance.to_i - withdrawal_amount.to_i
  puts "$#{withdrawal_amount} was successfully debited from your account. You current account balance is now #{balance}."

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
if password != current_password
  puts "Incorrect password"
end
puts "Congratulations"
end
