# Video Game Manager
# A program that allows you
# to organize your video game library
# from the command line!
# Programmed By: Kyrene Jackson
#
#============PROGRAM DESIGN==============
# Require sqlite3 gem
# Store new database into constant global
# Store console, genre, and game table
# string delimiters into variables.
# Populate console and genre fields
#
# Create GameLibrary class
  # Methods: initialize, greet,
  # show_menu, get_command, run

  # view library, edit library, quit


  # populate_genre,
  # populate_console,
  # add_game, update_game, delete_game,
  # view_library
  #
  # Attributes: genre_type, console_name,
  # user_name


# prompt user for data



#============DATABASE AND TABLES=========

require 'sqlite3'

$DATABASE = SQLite3::Database.new("videogames.db")

create_console_table = <<-SQL
  CREATE TABLE IF NOT EXISTS console (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

create_genre_table = <<-SQL
  CREATE TABLE IF NOT EXISTS genre (
    id INTEGER PRIMARY KEY,
    type VARCHAR(255)
  )
SQL

create_game_table = <<-SQL
  CREATE TABLE IF NOT EXISTS game (
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    console_id INT,
    genre_id INT,
    price DECIMAL(4, 2),
    completed BOOLEAN,
    FOREIGN KEY (console_id) REFERENCES console(id),
    FOREIGN KEY (genre_id) REFERENCES genre(id)
  )
SQL

#================CLASS================

class GameLibrary
  attr_accessor :genre_type, :console_name, :user_name
  attr_reader :menu
  def initialize(user_name)
    @user_name = user_name
    greet
  end
  def greet
    puts "Hello #{@user_name}!"
    puts "Welcome to your personal video game library."
    puts "Please enter a command: "
    show_menu
  end
  def show_menu
     menu = {"view library" => 1, "edit library" => 2, "quit" => 3}
     menu.each do |key, value|
       print "|#{key} - #{value}|"
  
     end
  end





end




#============DRIVER CODE==============
# initialize new instance
new_library = GameLibrary.new("Kyrene")




# Execute tables
# $DATABASE.execute(create_console_table)
# $DATABASE.execute(create_genre_table)
# $DATABASE.execute(create_game_table)




#============USER INTERFACE===========



#
# # MENU
# puts "Select a command: "

# menu_selection = gets.chomp
# begin case statement


#============TEST CODE=================

# Add test console
# $DATABASE.execute("INSERT INTO console (name) VALUES ('PC')")

# Add test genre
# $DATABASE.execute("INSERT INTO genre (type) VALUES ('RPG')")

# Add test game
# $DATABASE.execute("INSERT INTO game (title, console_id, genre_id, price, completed) VALUES ('World of Warcraft', 1, 1, 29.99, 'true')")
