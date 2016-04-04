#------------METHODS------------------
# Create a method that takes a vowel character and returns the next vowel
# So AEIOU -> EIOUA
def next_vowel(word)
  word.tr!('aeiou', 'eioua')
end
# Create another method that changes a consonant to the next consonant in the alphabet
# But does not alter vowels from next_vowel method
def next_consonant(word)
  word.tr!('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyz')
end
#--------------------------------------
# Initialize empty hash to store results
results_hash = {}
puts "Greetings agents! In order to protect your identity, we'll be assigning you an alias."
puts "Once all agents are processed, exit the program by typing 'quit'"
# Begin loop. Run program until user types 'quit'
terminate = false
until terminate == "true"
# Ask user for first name
puts "Please enter your first name"
name_1 = gets.chomp.downcase
# End program if user enters quit for their first name
if name_1 == "quit"
  terminate = true
end
break if terminate
# Ask user for last name
puts "Please enter your last name"
name_2 = gets.chomp.downcase
# Store full name value for hash
real_name = name_1 + " " + name_2
# End program if user enters quit for their last name
if name_2 == "quit"
  terminate = true
end
break if terminate
# Assign name_1 to last name variable, and name_2 to first name variable
first_name = name_2
last_name = name_1
puts "Please standby while we create your alias..."
# Pass first_name through both methods
# Assign result to new variable: alias_first_name
next_vowel(first_name)
alias_first_name = next_consonant(first_name)
# Pass last_name through both methods
# Assign result to new variable: alias_last_name
next_vowel(last_name)
alias_last_name = next_consonant(last_name)
# Add both names together
 alias_full_name = alias_first_name + " " + alias_last_name
# Before printing the new name validate the first and last name to ensure neither contain whitespace, symbols, or letters
# Split the alphabet
alphabet = ('a'..'z').to_a
# Split first and last names
alias_first_name_array = alias_first_name.split('')
alias_last_name_array = alias_last_name.split('')
# Check to ensure the name minus the alphabet returns an empty array. If it doesn't, it must contain blanks, numbers, or symbols
valid_first_name = (alias_first_name_array - alphabet).empty?
valid_last_name = (alias_last_name_array - alphabet).empty?
# Using result of the check, create a conditional
if valid_first_name && valid_last_name
  puts "Your new name is: #{alias_full_name}!"
  results_hash[real_name] = alias_full_name
else
  puts "ERROR 501: Invalid character used, please try again"
end
end
# Print results
puts "Your results: "
# Iterate through the results hash and display keys and values in a logical sentence.
results_hash.each do |real, fake|
  puts "#{real} is also known as #{fake}"
end
