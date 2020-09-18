def introduction
  puts "-" * 35
  puts "| 🏦 Welcome to Dark's ATM Simulator 🏦 |"
  puts "-" * 35
  puts "What would you like to do today?"
  puts "-" * 3

  puts " (U) - Sign up"
  puts " (I) - Sign in"
  puts "-" * 10

  return gets.chomp.upcase
end
