# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + "!!!!!!!!" + " :D"
#   end
# end

module Shout
  def yell_angrily(name)
    name = name.upcase
    puts "ARE YOU KIDDING ME #{name}?!?!"
  end
  def yelling_happily(words)
    puts "Yay! #{words}!!!!!"
  end
end



class Coach
  include Shout
end

class Children
  include Shout
end







#Driver code
#puts Shout.yell_angrily("im mad")
#puts Shout.yelling_happily("yay")
