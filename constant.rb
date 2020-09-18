class Example
  VAR1 = 100
  VAR2 = 200
  def show
    puts "Value of first constant is #{VAR1}"
    puts "Value of second constant is #{VAR2}"
  end
end

# Creating objects
objects = Example.new()
objects.show