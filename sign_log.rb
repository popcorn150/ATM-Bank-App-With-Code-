puts "(A) - Sing_up" 
puts "or" 
puts "(B) - Log_in"
answer = gets.chomp.upcase

if answer == "A"
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
  goal = gets.chomp.upcase

 if goal != "O"
  puts "Sorry you must first have to open an account to go through the other process before you can log into the rest!"
  puts "What would you like to do today?"
  goal = gets.chomp.upcase
 end
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
 end
end

if answer == "B"
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