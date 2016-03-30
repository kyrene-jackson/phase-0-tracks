# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

“iNvEsTiGaTiOn”.swapcase
# => “InVeStIgAtIoN”

 “zom”.replace "zoom"
# => “zoom”

 “enhance”.center(20)
#=> “    enhance    ”

 “Stop! You’re under arrest!”.upcase
# => “STOP! YOU’RE UNDER ARREST!”

 my_string = "the usual "
 my_string.concat("suspects")
 # or
 my_string_two = "the usual "
 my_string_two << "suspects"
#=> “the usual suspects”

“ suspects”.insert(0, "the usual")
#=> “the usual suspects”

 “The case of the disappearing last letter”.chop
# => “The case of the disappearing last lette”

 example = “The mystery of the missing first letter”
 example.slice!(0)
 p example
 #or
 example_2 = "“The mystery of the missing first letter”"
 example_2[1..-1]
# => “he mystery of the missing first letter”

“Elementary  ,    my   dear      Watson!”.squeeze(" ")""
# => “Elementary, my dear Watson!”

“z”.ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)
# Answer: 122 is the ASCII representation of the lowercase z.i

“How many times does the letter ‘a’ appear in this string?”.count "a"
#=> 4
