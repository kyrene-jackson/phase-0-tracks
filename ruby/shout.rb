module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
    words + "!!!!!!!!" + " :D"
  end
end


#Driver code

puts Shout.yell_angrily("im mad")
puts Shout.yelling_happily("yay")
