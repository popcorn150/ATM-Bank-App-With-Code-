puts "-" * 35
puts "| 🏦 Welcome to Dark's ATM Simulator 🏦 |"
puts "-" * 35
puts "What would you like to do today?"
puts "-" * 3

puts " (U) - Sign up"
puts " (I) - Sign in"
puts "-" * 10
goal = gets.chomp.upcase

if goal == "U"
  puts "-" * 11
  puts "New Account"
  puts "-" * 11

  puts "Let's get you started, please answer the following questions..."
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
  @email = gets.chomp
  puts "-" * 15

  puts "House Address"
  house_address = gets.chomp
  puts "-" * 15

  puts "Choose a Password"
  first_password = gets.chomp
  puts "-" * 15

  puts "Confirm Password"
  confirm_password = gets.chomp
  puts "-" * 15
  while confirm_password != first_password
    puts "Sorry incorrect password! Try again.."
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
  goal = gets.chomp.upcase

elsif goal == "I"
  puts "-" * 35
  puts "| Welcome to Dark's ATM simulator |"
  puts "-" * 35

  puts "Enter your Email address"
  email = gets.chomp
  puts "Enter your password"
  password = gets.chomp

  password_count = 1
  while password != first_password
    if password_count == 3
      puts "Invalid E-mail and password. Please sign-up for a new account next time if you don't have one.."
      exit
    end

    puts "Incorrect E-mail and password, 2 attempts left."  
    puts "Enter your E-mail address"
    email = gets.chomp
    puts "Enter your password"
    password = gets.chomp
    password_count = password_count + 1
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

  balance = 0
if goal == "D"
  puts "-" * 23
  puts "Account Deposite"
  puts "-" * 23

  puts "Enter a deposit amount"
  deposit_amount = gets.chomp.to_i
  balance = deposit_amount
  puts "$#{deposit_amount} was successfully deposited in your account. Your current account balance is now $#{balance}."

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

elsif goal == "S"
  puts "-" * 10
  puts "Send Money"
  puts "-" * 10

  puts "Hi #{first_name}, would you like to send money to someone?"
  puts "Yes"
  puts "or"
  puts "No"
  answer = gets.chomp.upcase
  if answer == "No"
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
    puts "Insufficient funds, please deposit into your account and try again"
    sending_amount = gets.chomp
  end
  puts "Enter a name for the receiver"
  receiver_name = gets.chomp
  puts "Are you sure you want to send $#{sending_amount} to #{receiver_name}?"
  puts "Yes"
  puts "or"
  puts "No"
  answer = gets.chomp.upcase
  if answer == "No"
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
  password_count = 1
  password = gets.chomp
  while password != first_password
    if password_count == 3
      puts "Sorry your account has been blocked! Please contact your bank."
      exit
  end
  puts "Incorrect password 2 attempts left and you account would be blocked!"
  password = gets.chomp
  password_count = password_count + 1

  balance = balance.to_i - sending_amount.to_i
  puts "$#{sending_amount} was successfully sent to #{receiver_name}. Your current account balance is now $#{balance}."
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

if goal == "W"
  puts "-" * 23
  puts "Account Withdrawal"
  puts "-" * 23

  puts "Enter a withdrawal amount:"
  withdrawal_amount = gets.chomp.to_i

  while withdrawal_amount > balance
    puts "Sorry, insufficient funds. Please deposit into your account and try again.."
    withdrawal_amount = gets.chomp.to_i
    puts "Please wait while your transcation is processing.."
  end
  puts "Enter your password to confirm"
  password = gets.chomp

  password_count = 1
  attempt = 1
  while password != first_password
    if password_count == 3
      puts "Sorry your account has been blocked! Please contact your bank."
      exit
    end
    password_count = password_count + attempt
    puts "Incorrect password 2 attempt left and your account would be blocked!"
    password = gets.chomp
  end
  balance = balance.to_i - withdrawal_amount.to_i
  puts "$#{withdrawal_amount} was successfully debited from your account. Your current account balance is now #{balance}."

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

elsif goal == "B"
  puts "-" * 23
  puts "Check Balance"
  puts "-" * 23

  puts "Enter your E-mail and password to confirm this process.."
  puts "E-mail address"
  email = gets.chomp

  puts "Password"
  password = gets.chomp

  password_count = 1
  while email || password != @email || first_password
    if password_count == 3
      puts "Invalid E-mail and password. Your account has been blocked, please contact your bank.."
      puts "Thank you.."
     exit
    end
    puts "Incorrect E-mail and password, 2 attempt left."
    puts "Enter your E-mail address"
    email = gets.chomp
    puts "Enter your password"
    password = gets.chomp
    password_count = password_count + 1
  end
  puts "Your currenct account balance is $#{balance}"

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

if goal == "C"
  puts "-" * 23
  puts "Change password"
  puts "-" * 23

  puts "Do you REALLY want to change your account password?"
  puts "Yes"
  puts "or"
  puts "No"
  answer = gets.chomp.upcase
  if answer == "No"
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
  puts "To change you account password to a new one, you need to enter your account password.."
  puts "Enter you password"
  password = gets.chomp

  password_count = 1
  while password != first_password
    if password_count == 3
      puts "Sorry your account has been blocked, please contact your bank for more information.."
      puts "Thank you.."
      exit
    end

    puts "Incorrect password, 2 attempt left."
    puts "Enter your password"
    password = gets.chomp
    password_count =password_count + 1
  end
  puts "Enter a new password"
  current_password = gets.chomp
  
  puts "Confirm your current password to continue this process.."
  confirm_password = gets.chomp
  if confirm_password != current_password
    puts "Please re-enter your password"
  end
  puts "Congratulations your current password is now #{current_password}."
  puts "Please bear it in mind that this process can't be undone for 60days."
  puts "Thank you for your co-operations"

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

elsif goal == "L"
  puts "-" * 10
  puts "Log-out"
  puts "-" * 10
  
  puts "Do you want to log-out"
  puts "Yes"
  puts "or"
  puts "No"
  answer = gets.chomp.upcase
  if answer == "No"
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

  puts "-" * 35
  puts "| 🏦 Welcome to Dark's ATM Simulator 🏦 |"
  puts "-" * 35
  puts "What would you like to do today?"
  puts "-" * 3

  puts " (U) - Sign up"
  puts " (I) - Sign in"
  puts "-" * 10
  goal = gets.chomp.upcase
end
end