# Video Game Manager
# A program that allows you
# to organize your video game library
# from the command line!
# Programmed By: Kyrene Jackson
#
#=====================================
# PSEUDO CODE
# Step: require sqlite3 gem
# Step: create SQLite3 database
# Step: store database in global var
# (aware that this is a dangerous practice)
# add string delimiter for console table creation


# execute database
# add values




#=====================================

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

# execute

$DATABASE.execute(create_console_table)
$DATABASE.execute(create_genre_table)
$DATABASE.execute(create_game_table)


# add test console
# $DATABASE.execute("INSERT INTO console (name) VALUES ('PC')")
