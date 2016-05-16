# Video Game Manager
# A program that allows you
# to organize your video game library
# from the command line!
# Programmed By: Kyrene Jackson
#
#============PROGRAM DESIGN==============
# Require class files
# Initialize new GameManager instance
# Initialize new GameDatabase instance
#=============REQUIRES====================
require 'sqlite3'
require_relative 'managerclass'
require_relative 'dataclass'

#============DRIVER CODE==============
# initialize new instance of both classes


class Program
  attr_accessor :test_user, :test_database
  def initialize
    test_user = GameManager.new("Kyrene")
    test_database = GameDatabase.new
  end


end


testing = Program.new




#============TEST CODE=================
