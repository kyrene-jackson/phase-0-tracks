# Video Game Manager
# A program that allows you
# to organize your video game library
# from the command line!
# Programmed By: Kyrene Jackson
#
#============PROGRAM DESIGN==============
# Require gems.
# Create a video game database
# with a many-to-many relationship.
# Database tables:
  # -console
    # columns: id, name
  # -genre
    # columns: id, type
  # - video_game
    # columns: id, title, console_id,
    # genre_id, status
#===============REQUIRES======================
require 'sqlite3'
require 'faker'
#============DATABASE AND TABLES==============
db = SQLite3::Database.new("videogames.db")

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

db.execute(create_game_table)
db.execute(create_genre_table)
db.execute(create_console_table)
#=======POPULATE GENRES AND CONSOLES========
# Add test game
# $database.execute("INSERT INTO game (title, console_id, genre_id, price, completed) VALUES ('World of Warcraft', 1, 1, 29.99, 'true')")

# Add test genre
# $database.execute("INSERT INTO genre (type) VALUES ('RPG')")


# Add consoles
# Add test console
# $database.execute("INSERT INTO console (name) VALUES ('PC')")




#============DRIVER CODE==============




# Add test game
# $database.execute("INSERT INTO game (title, console_id, genre_id, price, completed) VALUES ('World of Warcraft', 1, 1, 29.99, 'true')")
