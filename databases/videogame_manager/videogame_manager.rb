# Video Game Manager
# A program that allows you
# to organize your video game library
# from the command line!
# Programmed By: Kyrene Jackson
#
#============PROGRAM DESIGN==============
# Require gems
# Store new database in global var
# Set string delimiters for table creation
# Populate genres and consoles
#===============REQUIRES======================
require 'sqlite3'

#============DATABASE AND TABLES==============
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
    completed BOOLEAN,
    FOREIGN KEY (console_id) REFERENCES console(id),
    FOREIGN KEY (genre_id) REFERENCES genre(id)
  )
SQL

$db.execute(create_game_table)
$db.execute(create_genre_table)
$db.execute(create_console_table)
#=======POPULATE GENRES AND CONSOLES========
# Add test game
# $database.execute("INSERT INTO game (title, console_id, genre_id, price, completed) VALUES ('World of Warcraft', 1, 1, 29.99, 'true')")

# Add test genre
# $database.execute("INSERT INTO genre (type) VALUES ('RPG')")

$db.execute("INSERT INTO genre (type) VALUES ('RPG')")
$db.execute("INSERT INTO genre (type) VALUES ('MMO')")
$db.execute("INSERT INTO genre (type) VALUES ('Shooter')")
$db.execute("INSERT INTO genre (type) VALUES ('Action')")

# Add consoles
# Add test console
# $database.execute("INSERT INTO console (name) VALUES ('PC')")
$db.execute("INSERT INTO console (name) VALUES ('PC') ")
$db.execute("INSERT INTO console (name) VALUES ('Xbox One') ")
$db.execute("INSERT INTO console (name) VALUES ('PS4') ")



#============HOME SCREEN CLASS==============
class HomeScreenInterface
  attr_accessor :user_name, :user_command
  attr_reader :menu
  MAIN_MENU = {"view collection" => 1, "edit collection" => 2, "quit" => 3}
  def initialize(user_name)
    @user_name = user_name
    greet
  end
  def greet
    puts "Hello #{@user_name}!"
    puts "Welcome to your video game"
    puts "collection manager!"
    show_main_menu
    puts " "
  end
  def show_main_menu
     MAIN_MENU.each do |key, value|
       print "|#{key} - #{value}|"
     end
  end
end
#============MENU SELECT CLASS==============
class MenuSelect
  attr_reader :continue
  MAIN_MENU = {"view collection" => 1, "edit collection" => 2, "quit" => 3}
  def initialize
    puts "Preparing commands..."
    get_command
  end
  def get_command
    puts ""
    puts "What would you like to do? : "
    @user_command = gets.chomp.to_i
    check_command
  end
  def check_command
    if !MAIN_MENU.has_value?(@user_command)
      puts "Error, unknown command, sorry!"
      get_command
    else
      check_for_quit
    end
  end
  def check_for_quit
    # code here
    # run_command
  end
end
#============COMMANDS CLASS==============

class Commands
  MAIN_MENU = {"view collection" => 1, "edit collection" => 2, "quit" => 3}
  attr_accessor :user_command
  def initialize
    puts "loading..."
  end
  def run_command
    case @user_command
    when 1
      view_collection
    when 2
      edit_collection
    end
  end
  def view_collection
    $db.execute("SELECT * FROM genre")
    p $db
  end
end




#============DRIVER CODE==============

new_user = HomeScreenInterface.new("Kyrene")
new_selection = MenuSelect.new
next_command = Commands.new





# Add test game
# $database.execute("INSERT INTO game (title, console_id, genre_id, price, completed) VALUES ('World of Warcraft', 1, 1, 29.99, 'true')")
