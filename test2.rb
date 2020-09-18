receiving_account_number = gets.chomp
if receiving_account_number.length != 23
  puts "This is an invalid account number, user not found."
  puts "Enter the receiving account number: "
  receiving_account_number = gets.chomp.length
end