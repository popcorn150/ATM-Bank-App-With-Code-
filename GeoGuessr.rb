puts "Welcome to GeoGuessr game center, do you want to play and win?"
puts "yes"
puts "or" 
puts "no?"
answer = gets.chomp

if answer === "no"
  puts "Sorry to see you go, thanks for stoping by"
  exit  
end

puts "Great now let start the GeoGuessr game."
puts "Who was the first man to jump from a plane?"
puts "-" * 20
puts "A - Dark David Jones"
puts "B - Rosemary Krockstein"
puts "C - Captain Albert Berry"
puts "D - Jackson Royal Osogbo"
puts "-" * 30
answer = gets.chomp
game_attempt = 1

while answer != "C"
  if game_attempt == 3
    
    puts "Sorry you can't guess any futher,you lose!"

    exit
  end
  puts "Sorry incorrect guess,please try again."
  
  answer = gets.chomp
  game_attempt = game_attempt + 1
end

puts "Congratulations on your first question,two more to go!"
puts "Now for the second question, Who was the first man to land on the moon?"
puts "-" * 20
puts "A - Andrew williams"
puts "B - Larry Croft"
puts "C - Captain Albert Berry"
puts "D - Commander Neil Armstrong"
puts "-" * 30
answer = gets.chomp
game_attempt = 1

while answer != "D"
  if game_attempt == 3
    puts "Sorry you can't guess any futher,you lose!"

    exit
  end
 puts "Sorry incorrect guess,try again."

 answer = gets.chomp
  game_attempt = game_attempt + 1
end

puts "Congratulations on your second question, you are really doing great!"
puts "Now guess the last one and go win that prize! Who was the first woman to drive a car?"
puts "-" * 20
puts "A - Bertha Benz"
puts "B - Larry Croft"
puts "C - Jake Blaze"
puts "D - Micheal Jones"
puts "-" * 30
answer = gets.chomp

game_attempt = 1
while answer != "A"
  if game_attempt == 3
    puts "Sorry you can't guess any futher,you lose!"

    exit
  end
 puts "Sorry incorrect guess,try again."

 answer = gets.chomp
  game_attempt = game_attempt + 1
end

puts "-" * 60
puts "Congratulations, that was really great now i can see how smart you are."
puts "Now enter three things you need as your prize?"

prize_gift = []

prize_gift1 = gets.chomp
prize_gift << prize_gift1


prize_gift2 = gets.chomp
prize_gift << prize_gift2

prize_gift3 = gets.chomp
prize_gift << prize_gift3
print "Here are the gifts you asked for, #{prize_gift}\n"
