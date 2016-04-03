# Ask user for name
puts "Enter name"
user_name = gets.chomp.downcase
# Create a method that converts vowels to the next vowels
# AEIOU -> EIOUA
def next_vowel(word)
  word.tr!('aeiou', 'eioua')
end

p user_name
p next_vowel(user_name)
