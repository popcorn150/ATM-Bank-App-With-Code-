def sign_up
  puts "-" * 23
  puts "Open an Account"
  puts "-" * 23

  puts "Let's get you started please answer the following questions:"
  puts "-" * 3

  puts "First Name"
  first_name = gets.chomp.upcase

  puts "Last Name"
  last_name = gets.chomp.upcase

  puts "Date of Birth (YY-MM-DD)"
  date_of_bith = gets.chomp.upcase

  puts "Phone Number"
  phone_number = gets.chomp.upcase

  puts "E-mail"
  email = gets.chomp.upcase

  puts "House address"
  house_address = gets.chomp.upcase

  puts "Choose a Password"
  password = gets.chomp.upcase

  puts "Confirm Password"
  confirm_password = gets.chomp.upcase

  puts "-" * 23
  puts "Registration Successful"
  puts "-" * 23

  puts "Welcome #{first_name} #{last_name}, your account has been created successfully."

  return first_name
end