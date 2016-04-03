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
first_name = gets.chomp.downcase
puts "What is your last name?"
last_name = gets.chomp.downcase
# Assign results to new variables
new_first_name = last_name
new_last_name = first_name
# Add both name strings and assign result to a new variable
 $name = new_first_name + ' ' + new_last_name
# # Print swapped full name
 p $name
#-------------------------------------------------------------
# Step 2
# Change all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou'

# Create a method that iterates through the name and converts vowels to next vowel in sequence.
# Method for first name
def vowel_switcher(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  split_name = $name.split('')
  converted_name = split_name.map do |word|
    if vowels.include?(word)
      test_name = word.tr!('aeiou', 'eioua')
    end
    $name = test_name
  end
end

vowel_switcher($name)
p $name


def cons_switcher(new_first_name)
  consonants = ('b'..'d').to_a + ('f'..'h').to_a + ('j'..'n').to_a + ('p'..'t').to_a + ('v'..'z').to_a
  individual_letter = $new_name_round_one.split('')
  converted_name = individual_letter.map do |word|
    if consonants.include?(word)
      word.tr!('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyb')
      p word
    end
  end
end




#------------------------------------
# Step 3
# Change all consonants (everything else besides the vowels) to the next consonant in the alphabet.


# method that iterates through the swapped_full_name by splitting it into an array then comparing each letter of the array against the vowels array. If it doesn't have a vowel it's a consonant.

#and moving them to the next letter in the alphabet?
