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





#=====================================

require 'sqlite3'

$DATABASE = SQLite3::Database.new("videogames.db")

create_table_cmd = <<-SQL
  CREATE TABLE console (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

$DATABASE.execute(create_table_cmd)
