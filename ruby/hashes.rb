# Instructions:
# Pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on. Your keys should be symbols unless you find that you need a string for some reason.
#----------------------------------------------
# initialize new hash
applicant = {}
# prompt the designer for basic data, add data to hash
puts "Please enter your client's name"
client_name = gets.chomp
applicant[:name] = client_name
p applicant
#puts "Please enter your client's age"
#client_age = gets.chomp.to_i

#puts "How many children does #{name} have?"
#number_of_children = gets.chomp.to_i
#  if number_of_children == 0
#    has_children = false
#  else
#    has_children = true
#  end
#puts "What decor theme would #{name} like?"
#decor_theme = gets.chomp
# variables:
# name, age, number_of_children, has_children, decor_theme
#----------------------------------------------
