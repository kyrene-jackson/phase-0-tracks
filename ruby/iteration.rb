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
