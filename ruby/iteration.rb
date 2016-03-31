def say_hello
  x = "Mandy"
  y = "Kyrene"
  puts "Before block"
  yield(x, y)
  puts "After block!"
end

say_hello { |x, y| puts "Hi #{x} and #{y}!" }


favorite_color = {
  mandy: "gray",
  kyrene: "red",
  bobby: "green",
  cindy: "pink",
  alex: "purple"
  }

ages = [27, 21, 25, 18, 19]

p "Before change"
p favorite_color

favorite_color.each do |name, color|
  color = color.upcase
end
#-----------------------------------
p "After change"
p favorite_color

p "Before .each change"
p ages

ages.each do |age|
  age = age.next
end

p "After .each change"
p ages

p "Before .map! change"
p ages

ages.map! { |age| age = age.next }

p "After .map! change"
p ages

# My pair and I were not sure what to do for release 2: number 4 "A method that will remove items from a data structure until the condition in the block evaluates to false, then stops."
# we tried putting them into conditional statements but we were
# numbers.map! do |x|
#   if x == 19
#     numbers.delete(x)
#   end
# end
#
# p numbers
