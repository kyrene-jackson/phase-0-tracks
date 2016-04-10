# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + "!!!!!!!!" + " :D"
#   end
# end
#puts Shout.yell_angrily("im mad")
#puts Shout.yelling_happily("yay")

module Shout
  def yell_angrily(words)
    words = words.upcase
    puts "HEY! #{words}!!!!"
  end
  def yelling_happily(words)
    puts "Wow! #{words}!!!!!"
  end
end

class Coach
  include Shout
end

class Children
  include Shout
end

coach = Coach.new
coach.yell_angrily("time for warmups")
coach.yelling_happily("we won")

children = Children.new
children.yell_angrily("I was first")
children.yelling_happily("we all got candy")
