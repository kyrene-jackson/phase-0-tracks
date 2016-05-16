# Video Game Manager
# A program that allows you
# to organize your video game library
# from the command line!
# Programmed By: Kyrene Jackson
#
#============PROGRAM DESIGN==============
# Require gems.
# Create a video game database
# Game database:
  # - video_game
    # columns: id, title,
    # genre_id, status
# Genre database
  # -genre
    # columns: id, type
#
# Program methods:
  # populate_genre, populate_game,
  # view_library, view_genre



#===============REQUIRES======================
require 'sqlite3'
require 'faker'
#=======CREATE DATABASE AND TABLES=============
$db = SQLite3::Database.new("videogames.db")

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
    genre_id INT,
    price DECIMAL(4, 2),
    status BOOLEAN,
    FOREIGN KEY (genre_id) REFERENCES genre(id)
  )
SQL

$db.execute(create_game_table)
$db.execute(create_genre_table)

#=======PROGRAM METHODS==============
CONSOLES = ['PC', 'Xbox One', 'PS4']
def populate_genre(new_genre)
$db.execute("INSERT INTO genre (type) VALUES ('#{new_genre}')")
end

def populate_game(title, genre_id, price, status)
  $db.execute("INSERT INTO game (title, genre_id, price, status) VALUES (?, ?, ?, ?, ?)", [title, selected_genre, price, status])
end

#======COMMAND METHODS==========
def view_library
  game_library = $db.execute("SELECT * FROM game")
  puts "This is your collection: "
  puts game_library
end

def view_genre
  genre_library = $db.execute("SELECT * FROM genre")
  puts genre_library
end


populate_genre('RPG')
populate_genre('MMO')


#=======USER INTERFACE==============
MAIN_MENU = "|'view library: 1', 'update library: 2', 'add game: 3', 'quit: 4'|"
puts "Welcome to your own video game"
puts "library manager!"
loop do
puts MAIN_MENU
puts "Please select a menu option: "
user_cmd = gets.chomp.to_i
break if user_cmd == 4
case user_cmd
when 1
  view_library
when 2
  puts "update library"
when 3
  puts "add game"
  puts "What is the title of the game?"
  title = gets.chomp.downcase
  puts "Will you be entering a new genre for #{title}?"
  puts "Select: (y/n)"
  choice = gets.chomp.downcase
  if choice == "y"
    # add new genre
  else
    puts "Please enter the number of the genre: "
    view_genre
    genre_select = gets.chomp.to_i
    genre = $db.execute("SELECT * FROM genre WHERE 'id'= genre_select")
  end
end
end


#============DRIVER CODE=============
# populate_genre('RPG')
#populate_game('World of Warcraft', 1, 1, 29.99, true)

# Add test genre
#$db.execute("INSERT INTO genre (type) VALUES ('RPG')")
