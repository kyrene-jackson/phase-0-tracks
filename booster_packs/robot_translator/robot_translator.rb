# WEEK 4 SKILLS
# ROBOT TRANSLATOR

# IF a letter is capitalized AND it's in the first half of the alphabet, it becomes "bloop".

# OTHERWISE, IF a letter is capitalized OR it's the letter "e", it becomes "buzz".

# IF it's not a letter at all (ie. punctuation) it becomes "boing".

# OTHERWISE, it becomes "bleep".

# Example input: "Happy Halloween!"
# => "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbuzzbuzzbeepboing"

#=================================================================================
# BUSINESS LOGIC

def translate_char(char)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  halfway = alphabet.length / 2
  is_capitalized = (char.upcase == char)

  if !alphabet.index(char.downcase)
    "boing"
  elsif is_capitalized && alphabet.index(char.downcase) < halfway
    "bloop"
  elsif is_capitalized || char == "e"
    "buzz"
  else
    "beep"
end
end


def translate_phrase(phrase)
  char_index = 0
  translated_response = ""
  while char_index < phrase.length
    translated_response << translate_char(phrase[char_index])
    char_index += 1
  end
  translated_response
end

#=================================================================================
# USER INTERFACE
loop do
  puts "Enter a phrase to translate (or type 'q' for quit):"
  inputted_phrase = gets.chomp
  break if inputted_phrase == 'q'
  puts translate_phrase(inputted_phrase)
end
