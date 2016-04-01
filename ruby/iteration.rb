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

#-----------------------------------
hash = {
  mandy: "gray",
  kyrene: "red",
  bobby: "green",
  cindy: "pink",
  alex: "purple"
  }

numbers = [27, 21, 25, 18, 19]


# 1.) A method that iterates through the items, deleting any that meet a certain condition

# array:
p numbers.delete_if { |age| age < 20 }

# hash:
p hash.delete_if { |name, color| color.length < 4 }


# 2.) A method that filters a data structure for only items that do satisfy a certain condition

# array:
p numbers.values_at(1, 3, 4)

# hash:
p hash.reject { |name,color| color == "red"}


# 3.) A different method that filters a data structure for only items satisfying a certain condition
# array:
p numbers.select { |age| age < 20 }


# hash:
p hash.rassoc("gray")

# 4.) A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.

# array:
p numbers.keep_if { |age| age > 20 }

# hash:
p hash.keep_if { |name, color| color == "green" }
