# Video Game Manager
# A program that allows you
# to organize your video game library
# from the command line!
# Programmed By: Kyrene Jackson
#
#=====================================
# PSEUDO CODE
# Require sqlite3 gem
# Store new database into constant global
# Store console, genre, and game table
# string delimiters into variables.




#=====================================
# DATABASE AND TABLES

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

#=====================================
# DRIVER CODE

# Execute tables
$DATABASE.execute(create_console_table)
$DATABASE.execute(create_genre_table)
$DATABASE.execute(create_game_table)

#=====================================
# USER INTERFACE

puts "Please enter your name: "
name = gets.chomp
puts "Hello #{name}! Welcome to your
personal video game library."














#=====================================
# TEST CODE

# Add test console
# $DATABASE.execute("INSERT INTO console (name) VALUES ('PC')")

# Add test genre
# $DATABASE.execute("INSERT INTO genre (type) VALUES ('RPG')")

# Add test game
# $DATABASE.execute("INSERT INTO game (title, console_id, genre_id, price, completed) VALUES ('World of Warcraft', 1, 1, 29.99, 'true')")
