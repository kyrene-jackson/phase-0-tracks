# Ask user for name
puts "Enter name"
user_name = gets.chomp.downcase
# Create a method that converts vowels to the next vowels
# AEIOU -> EIOUA
def next_vowel(word)
  word.tr!('aeiou', 'eioua')
end

new_name = next_vowel(user_name)
p new_name

# Create a method that converts consonants to the next letter in the alphabet
def next_consonant(word)
  word.tr!('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyz')
end

p next_consonant(new_name)
