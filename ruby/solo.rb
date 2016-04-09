#release 0: design a class
#requirements ->
  #at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
  #at least three methods, at least one of which takes an argument
#=======================RELEASE 0===============================
#create wizard class
#method 1: initialize(name)
#method 2: cast spell(number of casts, spell type)
#method 3: summon dragon(dragon color, dragon type)
#method 4: teleport

#attribute 1: name
#attribute 2: spell type
#attribute 3: number of casts
#attribute 4: dragon color


#example output
#initialize output: "(Kael'thas)"
#cast spell output: "Kael'thas casted (3) (fire) spells!"
#summon dragon output: "(Kael'thas) summoned a (crimson) dragon!"
#teleport: Wait..where did (Kael'thas) go?...
#=======================RELEASE 1===============================
# release 1: write your class
# requirements ->
#   Use attr_reader and attr_accessor
#   Use an initialize method that sets at least one attribute

class Wizard
  attr_accessor :name, :spell_type, :cast_number, :dragon_color
  attr_reader :dragon_type
  def initialize(name)
    puts "Initializing new wizard..."
    @name = name
    @cast_number = cast_number
    @spell_type = spell_type
    @dragon_color = dragon_color
    @dragon_type = ["hydra", "drake", "wyvern"]
  end
  def cast_spell(number, spell_type)
    puts "Woah! #{name} casted #{number} #{spell_type} spell(s)!"
  end
  def summon_dragon(dragon_color)
    puts "#{name} summoned a #{dragon_color} #{dragon_type.sample}!"
  end
  def teleport
    puts "In the blink of an eye #{name} vanished..."
  end
end


#=======================RELEASE 2===============================
#release 2: use class in a program
#requirements ->
  #Your user should be allowed to create as many instances of your class as they like.
  #Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type.
  #Store these class instances in an array.
  #When the user indicates that they are finished creating instances, loop through the array and print out the attributes of each instance as a confirmation message of what was created.

#STEP 1
#prompt user for each attribute
#enter a name
#enter a spell type
#enter a number of casts
#enter a dragon color
#STEP 2
#convert user input to proper data type. for example:
#number_of_casts.to_i
#STEP 3
#assign values to instance variables/attributes. for example:
#@name = name
#@spell_type = spell_type
#STEP 4
#create empty array for storing instances
#STEP 5
#call class methods using users input
#add values to result array
#then ask if the user wants to continue or stop
  #if stop -> iterate through array and list of attributes for each instance
  #if continue -> restart loop

#create a loop that:
  #initializes a new instance using the users (name)
  #


#attributes: name, spell type, cast number, dragon color, dragon type
#example output
#initialize output: "(Kael'thas)"
#cast spell output: "Kael'thas casted (3) (fire) spells!"
#summon dragon output: "(Kael'thas) summoned a (crimson) dragon!"
#teleport: Wait..where did (Kael'thas) go?...

random_color = ["azure", "bronze", "crimson", "emerald", "silver"]
result_array = []

#start loop here to reassign values before initializing
puts "Welcome to Create-a-Wiz where you will be making your own wizard complete with spells and its own pet dragon!"
puts "Give your wizard a name"
name = gets.chomp.capitalize
puts "Enter a number"
cast_number = gets.chomp.to_i
puts "What is your wizard's favorite spell class? (for example: fire)"
spell_type = gets.chomp.downcase
puts "Do you want the dragon's color to be a surprise? (y/n)"
color_preference = gets.chomp.downcase
if color_preference == "y"
  dragon_color = random_color.sample
else
  puts "Enter a color for your wizard's pet dragon"
  dragon_color = gets.chomp.downcase
end
#initialize new instance using input data
new_wizard = Wizard.new(name)
new_wizard.cast_spell(cast_number, spell_type)
new_wizard.summon_dragon(dragon_color)
new_wizard.teleport






# p name
# p spell_type
# p cast_number
# p dragon_color
