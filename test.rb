puts "This is main Ruby Program"

END {
  puts "Terminating Ruby Program"
}
BEGIN {
  puts "Initializing Ruby Program"
}

class Sample
  def function
puts "Hello Ruby!"
  end
end

class Sample
  def hello
    puts "Hello Ruby!"
  end
end

object = Sample.new
object.hello