#create a santa class with 3 instance methods
#methods: speak, eat_milk_and_cookies, and initialize
#update santa with new attributes: gender, ethnicity, reindeer_ranking, and age
class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 20
  end
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
  #add two attribute changing methods to santa class
  def celebrate_birthday

  end
  #add two getter methods: gender should return @gender, and ethnicity should return @ethnicity
  def gender
    @gender
  end
  def ethnicity
    @ethnicity
  end
end

#=========DRIVER CODE=============================
# TEST: initialize, speak, and eat_milk_and_cookies methods
# practice = Santa.new
# practice.speak
# practice.eat_milk_and_cookies("snickerdoodle")
# TEST: gender and ethnicity array iteration
# santas = []
# example_genders = ["Agender", "Female", "Bigender", "Male", "Gender Fluid", "Prefer not to say"]
# example_ethnicities = ["Egyptian", "Scottish", "Indonesian", "Brazilian", "Multi-Ethnic", "Mystical Dragon", "Prefer not to say"]
# example_ethnicities.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas
# TEST: getter methods
# practice = Santa.new("Female", "Brazilian")
# p practice.gender
# p practice.ethnicity
