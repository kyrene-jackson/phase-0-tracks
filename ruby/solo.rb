# 6.4 Solo Challenge: Designing and Implementing a class.
# Programmed By: Kyrene Jackson
# A program that creates and customizes wizards according to
# user input!
#=======================PROGRAM DESIGN===========================
# Create wizard class
# Methods: initialize, cast spell, summon dragon, and teleport
# Attributes: name, spell class, number of casts, dragon color
#
# Example output:
# Cast spell output: "(Kael) casted (3) (fire) spells!"
# Summon dragon output: "(Kael) summoned a (crimson) (wyvern)!"
# Teleport: "And in the blink of an eye (Kael) vanished..."
#
# Program should be able to:
# Prompt user for each attribute, use input to print results of
# each method in logical sentences, store each wizard into
# a data structure, allow the user to make as many wizards as
# they want, and print history of all instances before
# exiting program.
#=======================WIZARD CLASS=============================
class Wizard
  attr_accessor :name, :spell_class, :cast_number, :dragon_color
  attr_reader :dragon_type, :number_of_wizards
  def initialize(name, cast_number, spell_class, dragon_color)
    puts "Conjuring new wizard..."
    @name = name
    @cast_number = cast_number
    @spell_class = spell_class
    @dragon_color = dragon_color
    @dragon_type = ["hydra", "drake", "wyvern"].sample
  end
  def cast_spell
    puts "Woah! #{@name} casted #{@cast_number}
    #{@spell_class} spell(s)!"
  end
  def summon_dragon
    puts "#{@name} summoned a #{@dragon_color}
    #{@dragon_type}!"
  end
  def teleport
    puts "And in the blink of an eye #{name} vanished..."
  end
end
#=======================USER INTERFACE============================
class CreateAWiz
  attr_accessor :number_of_wizards
  attr_reader :current_wizard_count, :all_wizards
  def initialize(number_of_wizards_to_create)
    @number_of_wizards = number_of_wizards_to_create
    @all_wizards = []
    @current_wizard_count = @all_wizards.size
  end
  def store_wizard(wizard)
    @all_wizards << wizard
  end
  def done?
    @current_wizard_count > @number_of_wizards
  end
end
#=============================
# intructions
puts "Welcome to Create-a-Wiz!"
puts "Where you will be able to choose the unique characteristics"
puts "of any number of wizards, and their dragon companions!"

# set variables
puts "Give this wizard a name: "
name = gets.chomp
puts "Enter a number, any number!"
cast_number = gets.chomp.to_i
puts "What is #{name}'s favorite spell class? (e.g. fire)"
spell_class = gets.chomp.downcase
puts "What color is #{name}'s dragon companion?"
dragon_color = gets.chomp.downcase


# Initialize new instance using input
wizard = Wizard.new(name, cast_number, spell_class, dragon_color)
CreateAWiz.new(wizard)












#
# result_array = []
# wants_to_continue = "yes"
#

# result_array << new_wizard
# new_wizard.cast_spell
# new_wizard.summon_dragon
# new_wizard.teleport
# puts "Create another wizard? (y/n)"
# status = gets.chomp.downcase
# if status == "y"
#   wants_to_continue = "yes"
# elsif status == "n"
#   wants_to_continue = "no"
# end
# end
# puts "A history of instances created:"
# result_array.each { |result| p result }
