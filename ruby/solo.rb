# 6.4 Solo Challenge: Designing and Implementing a class.
# Programmed By: Kyrene Jackson
# A program that creates and customizes wizards according to
# user input!
#=======================PROGRAM DESIGN===========================
# Create wizard class
# Methods: initialize, cast spell, summon dragon, and teleport
# Attributes: name, spell type, number of casts, dragon color
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
  attr_accessor :name, :spell_type, :cast_number, :dragon_color
  attr_reader :dragon_type
  def initialize(name, cast_number, spell_type, dragon_color)
    puts "Conjuring new wizard..."
    @name = name
    @cast_number = cast_number
    @spell_type = spell_type
    @dragon_color = dragon_color
    @dragon_type = ["hydra", "drake", "wyvern"].sample
  end
  def cast_spell
    puts "Woah! #{@name} casted #{@cast_number} #{@spell_type} spell(s)!"
  end
  def summon_dragon
    puts "#{@name} summoned a #{@dragon_color} #{@dragon_type}!"
  end
  def teleport
    puts "And in the blink of an eye #{name} vanished..."
  end
end
#=======================USER INTERFACE============================

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
