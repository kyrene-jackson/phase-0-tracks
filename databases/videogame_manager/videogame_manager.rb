# Video Game Manager
# A program that allows you
# to organize your video game library
# from the command line!
# Programmed By: Kyrene Jackson
#
#============PROGRAM DESIGN==============
# FINAL DESIGN PSEUDOCODE GOES HERE
#=============REQUIRES====================
require 'sqlite3'
require_relative 'managerclass'

#===========================================
# Create new database
$DATABASE = SQLite3::Database.new("videogames.db")

# Create new tables
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

# Execute tables
$DATABASE.execute(create_console_table)
$DATABASE.execute(create_genre_table)
$DATABASE.execute(create_game_table)

#============DRIVER CODE==============
# initialize new instance of both classes
new_library = GameManager.new("Kyrene")









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
