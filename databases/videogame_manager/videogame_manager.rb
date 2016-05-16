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
#
# Program methods:
  # populate_genre, populate_console


#===============REQUIRES======================
require 'sqlite3'
require 'faker'
#=======CREATE DATABASE AND TABLES=============
$db = SQLite3::Database.new("videogames.db")

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
    status BOOLEAN,
    FOREIGN KEY (console_id) REFERENCES console(id),
    FOREIGN KEY (genre_id) REFERENCES genre(id)
  )
SQL

$db.execute(create_game_table)
$db.execute(create_genre_table)
$db.execute(create_console_table)


#=======PROGRAM METHODS==============
def populate_genre(new_genre)
$db.execute("INSERT INTO genre (type) VALUES ('#{new_genre}')")
end

def populate_console(new_console)
  $db.execute("INSERT INTO console (name) VALUES ('#{new_console}')")
end

def populate_game(title, console_id, genre_id, price, status)
  $db.execute("INSERT INTO game (title, console_id, genre_id, price, status) VALUES (?, ?, ?, ?, ?)", [title, selected_console, selected_genre, price, status])
end

#======COMMAND METHODS==========
def view_library
  library = $db.execute("SELECT * FROM genre")
  puts library
end



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
end
end


#============DRIVER CODE=============

# populate_genre('RPG')
# populate_console('PS4')
#populate_game('World of Warcraft', 1, 1, 29.99, true)



# Add test genre
#$db.execute("INSERT INTO genre (type) VALUES ('RPG')")


# Add consoles
# Add test console
# $database.execute("INSERT INTO console (name) VALUES ('PC')")
