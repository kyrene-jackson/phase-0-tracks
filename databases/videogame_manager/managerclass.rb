# This class will handle the UI aspects of the program
#
# Create GameManager class
  # Methods: initialize, greet,
  # show_main_menu, get_command, run

  # view library, edit library, quit


  # populate_genre,
  # populate_console,
  # add_game, update_game, delete_game,
  # view_library
  #



  # Attributes: # user_name


# Require dataclass
require_relative 'dataclass'
#================GAME MANAGER CLASS===================

class GameManager
  attr_accessor :user_name
  attr_reader :menu
  MAIN_MENU = {"view collection" => 1, "edit collection" => 2, "quit" => 3}
  def initialize(user_name)
    @user_name = user_name
    greet
  end
  def greet
    puts "Hello #{@user_name}!"
    puts "Welcome to your video game"
    puts "collection manager!"
    show_main_menu
    puts " "
  end
  def show_main_menu
     MAIN_MENU.each do |key, value|
       print "|#{key} - #{value}|"
     end
  end
  def get_command
    puts "Please enter a command: "
    user_command = gets.chomp.to_i
  end
end
