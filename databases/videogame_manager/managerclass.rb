#================UI CLASS================

class GameManager
  attr_accessor :genre_type, :console_name, :user_name
  attr_reader :menu
  def initialize(user_name)
    @user_name = user_name
    greet
  end
  def greet
    puts "Hello #{@user_name}!"
    puts "Welcome to your personal video game library."
    show_menu
    puts " "
  end
  def show_menu
     menu = {"view library" => 1, "edit library" => 2, "quit" => 3}
     menu.each do |key, value|
       print "|#{key} - #{value}|"
     end
  end
  def get_command
    puts "Please enter a command: "
    user_command = gets.chomp.to_i
    if menu.has_value?(user_command)
end
