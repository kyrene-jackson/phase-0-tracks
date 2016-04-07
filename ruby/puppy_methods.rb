class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end
  def speak(number)
    number.times { |number| puts "Woof!" }
  end
  def roll_over
    puts "*rolls over*"
  end
  # each dog year = 4 human years
  def dog_years(human_year)
    puts human_year / 4
  end
  def get_the_paper
    puts "Look! I brought in the newspaper!"
  end

end









# DRIVER CODE
practice = Puppy.new
practice.fetch("ball")
practice.speak(5)
practice.roll_over
practice.dog_years(21)
practice.get_the_paper
