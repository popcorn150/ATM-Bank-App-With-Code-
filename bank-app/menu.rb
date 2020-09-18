def account_deposit
  puts "-" * 15
  puts "Account Deposit"
  puts "-" * 15

  puts "Enter a deposit amount"
  deposit_amount = gets.chomp.to_i

  balance = 0 + deposit_amount
  puts "$#{deposit_amount} was successfully deposited. You current account balance is now $#{balance}."
  menu("dave")
end


def menu (first_name)
  puts "-" * 5
  puts "Menu"
  puts "-" * 5
  puts "Hi #{first_name}, what would you like to do today"

  puts "(D) - Account-Deposit"
  puts "(S) - Send Money"
  puts "(W) - Withdrawal"
  puts "(P) - Print Statement"
  puts "(B) - Check Balance"
  puts "(C) - Change Password"
  puts "(L) - Log-out"

  option = gets.chomp.upcase

  case option
  when "D"
    account_deposit
  when "S"
    send_money
  when "W"
    withdrawal
  when "P"
    print_statement
  when "B"
    check_balance
  when "C"
    change_password
  when "L"
    log_out
  else
    puts "Invalid option"
  end
end
