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
puts "Please standby while we create your alias"
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
 p "Your new name is: #{alias_full_name}!"
 #--------------------------------------
