# 6.4 Solo Challenge: Designing and Implementing a class.
# Create-a-Wiz
# A game that creates and customizes wizards according to
# your own input!
# Programmed By: Kyrene Jackson
#=======================PROGRAM DESIGN==============================
# Create Wizard class
# Methods: initialize, cast spell, summon dragon, teleport, show off
# Attributes: name, spell class, number of casts, dragon color
#
# Example output:
# Cast spell output: "(Kael) casted (3) (fire) spells!"
# Summon dragon output: "(Kael) summoned a (crimson) (wyvern)!"
# Teleport: "And in the blink of an eye (Kael) vanished..."
#
# Create Game class
# Methods: initialize, process wizard, store wizard, done?
# Attributes: number of wizards, final result
#
# Program should be able to:
# Prompt user for each attribute, use input to print results of
# each method in logical sentences, store each wizard into
# a data structure, allow the user to make as many wizards as
# they want, and print history of all instances before
# exiting program.
#=======================WIZARD CLASS================================

class Wizard
  attr_accessor :name, :spell_class, :cast_number, :dragon_color
  attr_reader :dragon_type
  def initialize(name, cast_number, spell_class, dragon_color)
    puts "Conjuring new wizard..."
    @name = name
    @cast_number = cast_number
    @spell_class = spell_class
    @dragon_color = dragon_color
    @dragon_type = ["hydra", "drake", "wyvern"].sample
  end
  def cast_spell
    puts "Woah! #{@name} casted #{@cast_number} #{@spell_class} spell(s)!"
  end
  def summon_dragon
    puts "#{@name} summoned a #{@dragon_color} #{@dragon_type}!"
  end
  def teleport
    puts "And in the blink of an eye #{name} vanished..."
  end
  def show_off
    cast_spell
    summon_dragon
    teleport
  end
end

#=======================GAME CLASS==================================

class Game
  attr_accessor :number
  attr_reader :wizard_count, :final_result
  def initialize(number_of_wizards)
    @number = number_of_wizards
    @final_result = []
  end
  def process_wizard(wizard)
    @final_result << wizard
    get_wizard_count
  end
  def get_wizard_count
    puts "The current count is: #{@final_result.length}"
  end
  def done?
    @number == @final_result.length
  end
end

#=======================USER INTERFACE==============================

puts "Welcome to Create-a-Wiz!"
puts "Where you will be able to choose the unique characteristics"
puts "of any number of wizards, and their dragon companions!"

puts "How many wizards would you like to create?"
number_of_wizards = gets.chomp.to_i

new_game = Game.new(number_of_wizards)
# BEGIN LOOP
while !new_game.done? do
  puts "Give this wizard a name: "
  name = gets.chomp
  puts "Enter a number, any number!"
  cast_number = gets.chomp.to_i
  puts "What is #{name}'s favorite spell class? (e.g. fire)"
  spell_class = gets.chomp.downcase
  puts "What color is #{name}'s dragon companion?"
  dragon_color = gets.chomp.downcase
  wizard = Wizard.new(name, cast_number, spell_class, dragon_color)
  new_game.process_wizard(wizard)
end











# user wants to make 2 wizards
# start Game game with 2 rounds
# game will set number of rounds to 2,
# game will create storage array,
# UNTIL GAME IS DONE....
# prompt user for attributes for a new wizard
# take that wizard and pass it through next wizard
  # next wizard will TAKE THE CURRENT WIZARD and store it
  # game should return the length of the array
  # game should check to see if it should continue or stop


# puts "A history of instances created:"
# result_array.each { |result| p result }
