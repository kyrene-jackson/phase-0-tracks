# Instructions:
# Pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on. Your keys should be symbols unless you find that you need a string for some reason.
#----------------------------------------------
# initialize new hash
applicant = {}
# prompt the designer for basic data
puts "Please enter your client's name"
client_name = gets.chomp
# add name to hash
applicant[:name] = client_name

puts "Please enter your client's age"
client_age = gets.chomp.to_i
# add age to hash
applicant[:age] = client_age

puts "How many children does #{client_name} have?"
number_of_children = gets.chomp.to_i
  if number_of_children == 0
    has_children = false
  else
    has_children = true
  end
# add boolean value of has_children to hash
applicant[:has_kids] = has_children
# add number of children to hash
applicant[:number_of_kids] = number_of_children

puts "What decor theme would #{client_name} like?"
decor_theme = gets.chomp
# add decor theme pref to hash
applicant[:decor_preference] = decor_theme

#Print the hash back out to the screen when the designer has answered all of the questions.
puts applicant
#----------------------------------------------
# Give the user the opportunity to update a key
# If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update

puts "Would you like to update any of these fields?"
update_field = gets.chomp
case update_field
when "none"
  puts "Form complete! Final results:"
  puts applicant
when "name"
  puts "Please enter updated name"
  client_name = gets.chomp
  applicant[:name] = client_name
when "age"
  puts "Please enter updated age"
  client_age = gets.chomp.to_i
  applicant[:age] = client_age
when "has_kids"
  puts "Does #{client_name} have kids? (true/false)"
  has_children = gets.chomp.downcase
  applicant[:has_kids] = has_children
when "number_of_kids"
  puts "How many kids does #{client_name} have?"
  number_of_children = gets.chomp.to_i
  applicant[:number_of_kids] = number_of_children
when "decor_preference"
  puts "What decor theme would #{client_name} like?"
  decor_theme = gets.chomp
  applicant[:decor_preference] = decor_theme
end

puts "Form complete! Final results: "
puts applicant
