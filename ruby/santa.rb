#create a santaclass with 3 instance methods
#methods: speak, eat_milk_and_cookies, and initialize
#update santa with new attributes: gender, ethnicity, reindeer_ranking, and age
class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
end
#Driver code
# practice = Santa.new
# practice.speak
# practice.eat_milk_and_cookies("snickerdoodle")

santas = []
example_genders = ["agender", "female", "bigender", "male", "gender fluid", "N/A"]
example_ethnicities = ["Egyptian", "Scottish", "Indonesian", "Brazilian", "Multi-Ethnic", "Mystical Dragon", "Prefer not to say"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas
