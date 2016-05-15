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
$DATABASE = SQLite3::Database.new("videogames.db")







#============DRIVER CODE==============
# initialize new instance
new_library = GameManager.new("Kyrene")




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
