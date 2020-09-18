require_relative "screen1.rb"
require_relative "sign_up.rb"
require_relative "sign_in.rb"
require_relative "menu.rb"

goal = introduction
if goal == "U"
  name = sign_up
  menu(name)
elsif goal == "I"
  sign_in
else 
  puts "Invalid option"
end 

