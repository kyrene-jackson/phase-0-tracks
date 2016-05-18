# "Can I make this?"
# Programmed By: Kyrene Jackson
# A program that tells you
# if you have enough of a
# required ingredient to
# make a specific dessert!
#
#======PROGRAM DESIGN============
# Require gems
# Create 3 tables:
  # required ingredients,
  # inventory,
  # recipe







#======CREATE DB AND TABLES========
require 'sqlite3'
require 'faker'

$db = SQLite3::Database.open("recipe.db")

test = $db.execute(select * from recipe)
puts test 
