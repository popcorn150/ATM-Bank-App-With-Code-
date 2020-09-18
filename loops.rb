# pseudo code or behind the scene
 #x is 0
 #Is 0 less than 5? True. puts x. x = 0 + 1. x is 1.
 #Is 1 less than 5? True. puts x. x = 1 + 1. x is 2.
 #Is 2 less than 5? True. puts x. x = 2 + 1. x is 3.
 #Is 3 less than 5? True. puts x. x = 3 + 1. x is 4.
 #Is 4 less than 5? True. puts x. x = 4 + 1. x is 5.
 #Is 5 less than 5? False. Loop ends.
# "Finished the while loop." is printed to the screen.

# while loop
x = 0
while x < 5
  puts x
  x = x + 1
end
puts "Finished the while loop"

# little loop game code
answer = "" #creating an empty string variable
while answer != "Ruby"
  puts "sorry, wrong answer." unless answer == ""
  puts "What is the best programming language?"
  answer = gets.chomp
end
  puts "That's right!"

# for loop
for number in 1..5 do
  puts "The current value is #{number}"
end

# Waiting for the witch's arrival(while loop)
sunset = 7
current_time = 5

while current_time <= sunset do
  puts "Still waiting for the wizard."
  puts "It's now #{current_time} o'clock"
  current_time = current_time + 1
end
puts "The wizard has arrived!"
