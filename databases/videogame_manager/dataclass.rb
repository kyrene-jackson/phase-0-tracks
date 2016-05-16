# This class will handle the data manipulation of the program
# Require 'managerclass'
# Set string delimiters for console, genre, and game table creation.
#
# Create manager class
  # Methods: initialize (create new database)
  # generate_tables (add new tables to database)
  #










# Require files
#require_relative 'managerclass'
require 'sqlite3'
#================================================
# Create new database


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
#===============DATABASE CLASS=============

db = SQLite3::Database.new("videogames.db")
db.execute(create_game_table)




# Add test console
# $database.execute("INSERT INTO console (name) VALUES ('PC')")

# Add test genre
# $database.execute("INSERT INTO genre (type) VALUES ('RPG')")

# Add test game
# $database.execute("INSERT INTO game (title, console_id, genre_id, price, completed) VALUES ('World of Warcraft', 1, 1, 29.99, 'true')")
