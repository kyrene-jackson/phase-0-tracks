class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end
  def speak(number)
    number.times { |number| puts "Woof!" }
  end

end









# DRIVER CODE
practice = Puppy.new
practice.fetch("ball")
practice.speak(5)
