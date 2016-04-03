# 5.6 Solo Challenge
# pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:
# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
#-------------------------------------------------------------
# Step 1
# Swapping the first and last name.

# Ask spy for their first and last name
puts "In order to protect your identity, we'll be assigning you a fake name!"
puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
# Assign results to new variables
new_first_name = last_name
new_last_name = first_name
# Add both name strings and assign result to a new variable
swapped_full_name = new_first_name + ' ' + new_last_name
# Print swapped full name
p swapped_full_name
