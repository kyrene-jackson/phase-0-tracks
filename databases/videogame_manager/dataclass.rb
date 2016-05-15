# This class will handle the data manipulation of the program
# Create manager class
  # Methods: initialize, create_tables,
  # populate_genre, populate_console 





# Require files
require_relative 'managerclass'
#======================DATABASE CLASS========================

class GameDatabase
  def initialize
    $DATABASE = SQLite3::Database.new("videogames.db")
  end
end



#
# create_console_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS console (
#     id INTEGER PRIMARY KEY,
#     name VARCHAR(255)
#   )
# SQL
#
# create_genre_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS genre (
#     id INTEGER PRIMARY KEY,
#     type VARCHAR(255)
#   )
# SQL
#
# create_game_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS game (
#     id INTEGER PRIMARY KEY,
#     title VARCHAR(255),
#     console_id INT,
#     genre_id INT,
#     price DECIMAL(4, 2),
#     completed BOOLEAN,
#     FOREIGN KEY (console_id) REFERENCES console(id),
#     FOREIGN KEY (genre_id) REFERENCES genre(id)
#   )
# SQL
