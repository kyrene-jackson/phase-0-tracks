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
puts "In order to protect your identity, we'll be assigning you an alias!"
# Ask user for first name
puts "Please enter your first name"
name_1 = gets.chomp.downcase
# Ask user for last name
puts "Please enter your last name"
name_2 = gets.chomp.downcase
# Assign name_1 to last name variable, and name_2  to first name variable
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
# Add both names together and print result
 alias_full_name = alias_first_name + " " + alias_last_name
 #p "Your new name is: #{alias_full_name}!"
#--------------------------------------
# Lets deal with edge cases
# What if user input has blank space? a symbol?
# First split the the alphabet into an array
alphabet = ('a'..'z').to_a
# Now split alias name into an array
alias_first_name_array = alias_first_name.split('')
alias_last_name_array = alias_last_name.split('')
# We know if the new name minus each letter in the alphabet should return empty
# If it doesn't, it must contain blanks, numbers, or symbols
# So store the result of that check into valid_name
valid_first_name = (alias_first_name_array - alphabet).empty?
valid_last_name = (alias_last_name_array - alphabet).empty?
# Using result of the check, create a conditional
if valid_first_name && valid_last_name
  p "Your new name is: #{alias_full_name}!"
else
  p "ERROR: invalid character used, please try again"
end
