#create a santa class with 3 instance methods
#update santa class with new attributes: gender, ethnicity, reindeer_ranking, and age
#refactor santa class with getter/setter shortcuts
#note: commented out old instead of deleting for grading purposes!
class Santa
  attr_accessor :gender, :ethnicity, :age
  attr_reader :reindeer_ranking
  def initialize(gender, ethnicity, age)
    #puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
    #@age = 0
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
 #add two getter methods
  # def gender
  #   @gender
  # end
  # def ethnicity
  #   @ethnicity
  # end
end
#=========TEST CODE=============================
# create practice instance
# practice = Santa.new("Female", "Brazilian")
# TEST: initialize, speak, and eat_milk_and_cookies methods
# practice.speak
# practice.eat_milk_and_cookies("snickerdoodle")
# TEST: gender and ethnicity array iteration
# santas = []
 example_genders = ["agender", "female", "bigender", "male", "gender fluid", "prefer not to say"]
 example_ethnicities = ["Egyptian", "Scottish", "Indonesian", "Brazilian", "Multi-Ethnic", "Mystical Dragon", "Prefer not to say"]
# example_ethnicities.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas
# TEST: setter methods
# practice.celebrate_birthday
# practice.get_mad_at("Vixen")
# TEST: getter methods
# p practice.gender
# p practice.ethnicity
# TEST: refactor
# practice.gender = example_genders.sample
# practice.ethnicity = example_ethnicities.sample
# puts practice.gender
# puts practice.ethnicity
 #=========RELEASE 4=============================
#Make a program that generates multiple santas
#Each santa should have a random value for each attribute
#Attributes must print using the proper instance method.
random_gender = example_genders.sample
random_ethnicity = example_ethnicities.sample
random_age = rand(0..140)
greeting = ["Hey there!", "Howdy!", "Hello!", "Yo!", "Hi!", "What's up!", "Hi everyone!"]
random_greeting = greeting.sample
#begin loop. reassign random values to each variable every loop
count = 0
puts "Welcome to SantaCon! Lets check out what kind of Santas are attending this year: "
until count >= 15
create_santa = Santa.new(random_gender, random_ethnicity, random_age)
random_rank = nil
puts "#{random_greeting} I am a #{create_santa.age} year old #{create_santa.gender}, #{create_santa.ethnicity} Santa! My reindeer rank from most favorite to least is: #{random_rank}"
random_gender = example_genders.sample
random_ethnicity = example_ethnicities.sample
random_greeting = greeting.sample
random_age = rand(0..140)
random_rank = puts create_santa.get_mad_at(create_santa.reindeer_ranking.sample)
count += 1
end
puts "Wow! Gotta love such a diverse crowd!"
