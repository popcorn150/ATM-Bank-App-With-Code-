account_balance = 5000

puts "Please enter your ATM pin"
pin = gets.chomp

attempt_count = 1
while pin != "2346"
  if attempt_count == 3
    puts "Sorry your card has been blocked! Please contact your bank."

    exit
  end
  puts "Sorry incorrect pin,please try again"
  
 pin = gets.chomp
 attempt_count = attempt_count + 1
end

puts "Congratulations, you can now withdrawl.."
puts "Your account balance is $#{account_balance}"
puts "Enter a withdrawal amount"

withdrawal_amount = gets.chomp.to_i
puts "Please wait while your transcation is processing.."
while withdrawal_amount > account_balance
  puts "Sorry, insuffient funds, try again"
  withdrawal_amount = gets.chomp.to_i
  puts "Please wait while your transcation is processing."
end
account_balance = account_balance - withdrawal_amount
puts "You withdrawl $#{withdrawal_amount}, your account balance is $#{account_balance}"

