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
  def initialize
    puts "Initializing new puppy instance..."
  end

end
#==============================================
#Create new class
class Martial_Arts
#Initialize empty array to store instances, set count to zero for loop
	fight_array = []
	count = 0
	until count > 50
#Store newly created instance in variable
	fight_instance = Martial_Arts.new
#Initialize instance
	def initialize
    #uncomment to view initialize string
		#puts "Initializing battle...fight!"
	end
	def flip
		"*flip* you flipped over your opponent!"
	end
	def dodge(number_of_dodges)
		"You swiftly dodged your opponent's attack #{number_of_dodges} time(s)!"
	end
  #Store instance in fight array then increase count by one
	fight_array << fight_instance
	count += 1
end
#Iterate through final array 50 times, calling all instance methods each time
fight_array.each do |instance|
	puts instance.flip
	puts instance.dodge(2)
end
end
#==============================================
# DRIVER CODE
# practice = Puppy.new
# practice.fetch("ball")
# practice.speak(5)
# practice.roll_over
# practice.dog_years(21)
# practice.get_the_paper
# # ======================
# practice = Martial_Arts.new
# practice.flip
# practice.dodge(3)
