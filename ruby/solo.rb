#=======================RELEASE 0===============================
#create wizard class
#methods: initialize, cast spell, summon dragon, and teleport
#attribute 1: name
#attribute 2: spell type
#attribute 3: number of casts
#attribute 4: dragon color
#example output
#cast spell output: "(Kael) casted (3) (fire) spells!"
#summon dragon output: "(Kael) summoned a (crimson) (wyvern)!"
#teleport: "(Kael) vanished..."
#=======================RELEASE 1===============================
class Wizard
  attr_accessor :name, :spell_type, :cast_number, :dragon_color
  attr_reader :dragon_type
  def initialize(name, cast_number, spell_type, dragon_color)
    puts "Initializing new wizard..."
    @name = name
    @cast_number = cast_number
    @spell_type = spell_type
    @dragon_color = dragon_color
    @dragon_type = ["hydra", "drake", "wyvern"].sample
  end
  def cast_spell(number, spell_type)
    puts "Woah! #{name} casted #{number} #{spell_type} spell(s)!"
  end
  def summon_dragon(dragon_color)
    puts "#{name} summoned a #{dragon_color} #{dragon_type}!"
  end
  def teleport
    puts "And in the blink of an eye #{name} vanished..."
  end
end
#=======================RELEASE 2===============================
#release 2: use class in a program
#requirements ->
  #Your user should be allowed to create as many instances of your class as they like.
  #Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type.
  #Store these class instances in an array.
  #When the user indicates that they are finished creating instances, loop through the array and print out the attributes of each instance as a confirmation message of what was created.

#create empty array for storing instances
#prompt user for each attribute
#convert user input to proper data type. for example:
#number_of_casts.to_i
#assign values to instance variables/attributes.
#call class methods on new data, then print them in logical sentences
#add values to result array
#then ask if the user wants to continue or stop
  #if stop -> iterate through array and list of attributes for each instance
  #if continue -> restart loop


result_array = []
wants_to_continue = "yes"
puts "Welcome to Create-a-Wiz where you will be making your own wizard complete with spells and its own pet dragon!"
until wants_to_continue == "no"
puts "Give your wizard a name"
name = gets.chomp.capitalize
puts "Enter a number"
cast_number = gets.chomp.to_i
puts "What is your wizard's favorite spell class? (for example: fire)"
spell_type = gets.chomp.downcase
puts "Enter a color for your wizard's pet dragon"
dragon_color = gets.chomp.downcase
#initialize new instance using input data
new_wizard = Wizard.new(name, cast_number, spell_type, dragon_color)
result_array << new_wizard
new_wizard.cast_spell(cast_number, spell_type)
new_wizard.summon_dragon(dragon_color)
new_wizard.teleport
puts "Create another wizard? (y/n)"
status = gets.chomp.downcase
if status == "y"
  wants_to_continue = "yes"
elsif status == "n"
  wants_to_continue = "no"
end
end
puts result_array
