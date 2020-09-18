#The Welcome Screen
puts "-" * 35
puts "| Welcome to Dark's ATM simulator |"
puts "-" * 35

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
goal = gets.chomp

#if goal != "O"
  #puts "Sorry you must first have to open an account to go through the other process before you can log into the rest!"
  #puts "What would you like to do today?"
  #goal = gets.chomp
#end
if goal === "O"
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
 puts "Welcome #{last_name }#{first_name}, your account has been created successfully."

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

account_balance = 0
if goal === "D"
  puts "-" * 23
  puts "Account Deposit"
  puts "-" * 23

  puts "Enter a deposite_amount:"
  amount = gets.chomp 
  amount = account_balance
  puts "$#{amount} was successfully deposited to your account.Your current account balance is now $#{account_balance}."


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
  
  puts "Enter the receiving account number: "
  receiving_account_number = gets.chomp
  if receiving_account_number.length != 23
    puts "This is an invalid account number, user not found."
    puts "Enter the receiving account number: "
    receiving_account_number = gets.chomp
  end

  puts "Enter the amount you wish to send: "
  sending_amount = gets.chomp
  if sending_amount > account_balance
    puts "Insuficient fund, please deposite and try again."
    puts "Enter the amount you wish to send: "
    sending_amount = gets.chomp
  end

  puts "Enter a name for the receiver: "
  receiver = gets.chomp

  puts "Are you sure you want to send #{sending_amount} to #{receiver}?"
  puts "yes"
  puts "or"
  puts "no"
  answer = gets.chomp
  account_balance = account_balance - sending_amount
  if answer === "no"
    puts "Thank you for banking with us..."
    puts ""
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
  puts "Enter your password to confirm"
  password = gets.chomp

  password_attempt = 1
    while password != password1
      if password_attempt === 3
        puts "Sorry your account has been blocked.Please contact your bank."
        exit
      end
      puts "Sorry incorrect password, 2 attempts left and your account will be blocked."

      password = gets.chomp
      password_attempt = password_attempt + 1
    end
    puts "#{sending_amount} was successfully sent to #{receiver}. You current account balance is now #{account_balance}."

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

if goal === "W"
  puts "-" * 20
  puts "Account Withdrawal"
  puts "-" * 20

  account_balance = account_balance
  puts "Enter a withdrawal amount: "
  withdrawal_amount = gets.chomp.to_i
  while withdrawal_amount > account_balance
    puts "Sorry, insuffient funds,please deposite and try again"
    withdrawal_amount = gets.chomp.to_i
    puts "Please wait while your transcation is processing."
  end
   puts "Enter your password to confirm"
   password = gets.chomp

   password_attempt = 1
    while password != password1
      if password_attempt === 3
        puts "Sorry your account has been blocked.Please contact your bank."
        exit
      end
      puts "Sorry incorrect password, 2 attempts left and your account will be blocked."

      password = gets.chomp
      password_attempt = password_attempt + 1
    end

  account_balance = account_balance - withdrawal_amount
  puts "You withdrawl $#{withdrawal_amount}, your account balance is $#{account_balance}"
end