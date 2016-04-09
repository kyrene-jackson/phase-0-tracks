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
#release 1: write your class
#requirements ->
  #Use attr_reader and attr_accessor
  #Use an initialize method that sets at least one attribute
#
# class Wizard
#   attr_accessor :name, :spell_type, :cast_number
#   attr_reader :number_of_casts, :spell_type
#   def initialize(name)
#     puts "initializing new wizard..."
#     @name = name
#     @spell_type = spell_type
#     @cast_number = cast_number
#     @dragon_color =
#   end
#   def cast_spell(number)
#     puts "#{name} casted #{number} #{spell_type.sample} spells!"
#   end
#   def summon_dragon
#     puts "#{name} summoned a #{dragon_color.sample} dragon!"
#   end
#   def teleport
#     puts "Wait..where did #{name} go?.."
#   end
# end
#
# example = Wizard.new("kaelthas")
# example.teleport
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
#iterate through storage array and print out the attributes

#attributes: name, spell type, cast number, dragon color


random_color = ["azure", "bronze", "crimson", "emerald", "silver"]

#STEP 1 & STEP 2
puts "Welcome to Create-a-Wiz where you will be making your own wizard complete with spells and its own pet dragon!"
puts "Give your wizard a name"
name = gets.chomp.downcase
puts "What is your wizard's favorite spell class? (for example: fire)"
spell_type = gets.chomp.downcase
puts "Enter a number"
cast_number = gets.chomp.to_i
puts "Do you want your new dragon's color to be a surprise? (y/n)"
color_preference = gets.chomp.downcase
if color_preference == "y"
  dragon_color = random_color.sample
else
  puts "Enter a color for your wizard's pet dragon"
  dragon_color = gets.chomp.downcase
end

p name
p spell_type
p cast_number
p dragon_color
