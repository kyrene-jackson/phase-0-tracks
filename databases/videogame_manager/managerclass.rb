# This class will handle the UI aspects of the program
#================GAME MANAGER CLASS===================

class GameManager
  attr_accessor :genre_type, :console_name, :user_name
  attr_reader :menu
  def initialize(user_name)
    @user_name = user_name
    greet
  end
  def greet
    puts "Hello #{@user_name}!"
    puts "Welcome to your personal video game"
    puts "collection manager!"
    show_menu
    puts " "
  end
  def show_menu
     menu = {"view collection" => 1, "edit collection" => 2, "quit" => 3}
     menu.each do |key, value|
       print "|#{key} - #{value}|"
     end
  end
  def get_command
    puts "Please enter a command: "
    user_command = gets.chomp.to_i
  end
end
