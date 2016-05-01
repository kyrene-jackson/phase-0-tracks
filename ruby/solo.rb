#=======================RELEASE 0===============================
# Create wizard class
# Methods: initialize, cast spell, summon dragon, and teleport
# Attributes: name, spell type, number of casts, dragon color
# Example output:
# Cast spell output: "(Kael) casted (3) (fire) spells!"
# Summon dragon output: "(Kael) summoned a (crimson) (wyvern)!"
# Teleport: "And in the blink of an eye (Kael) vanished..."
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
#create empty array for storing instances
#prompt user for each attribute
#note: dragon_type set as an attr_reader for rubric requirements
#convert user input to proper data type
#assign values to instance variables/attributes.
#call class methods on new data, then print them in logical sentences
#add values to result array
#then ask if the user wants to continue or stop
#if no -> iterate through array and list of attributes for each instance
#if yes -> restart loop
result_array = []
wants_to_continue = "yes"
puts "Welcome to Create-a-Wiz!"
puts "Make your own wizard complete with spells and its own pet dragon!"
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
puts "A history of instances created:"
result_array.each { |result| p result }
