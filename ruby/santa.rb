#create a santa class with 3 instance methods
#methods: speak, eat_milk_and_cookies, and initialize
#update santa class with new attributes: gender, ethnicity, reindeer_ranking, and age
#refactor santa class with getter and setter shortcuts
class Santa
  attr_reader :gender, :ethnicity
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
  #add two attribute changing methods
  def celebrate_birthday
    @age.next
  end
  def get_mad_at(reindeer)
    reindeer_index = @reindeer_ranking.index(reindeer)
    @reindeer_ranking.delete_at(reindeer_index)
    @reindeer_ranking.push(reindeer)
   end
 #add two getter methods: gender => @gender, ethnicity => @ethnicity
  # def gender
  #   @gender
  # end
  # def ethnicity
  #   @ethnicity
  # end
end


#=========DRIVER CODE=============================
# create practice instance
practice = Santa.new("Female", "Brazilian")
# TEST: initialize, speak, and eat_milk_and_cookies methods
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
# TEST: setter methods
# practice.celebrate_birthday
# p practice.get_mad_at("Vixen")
# TEST: getter methods
 p practice.gender
 p practice.ethnicity
