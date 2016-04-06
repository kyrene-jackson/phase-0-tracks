# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Split string into individual elements
  # Set value for each element
  # Use data to create hash
# Output - Hash



example_string = "carrots apples cereal pizza"

def grocery_list(input_string)
  split_string = input_string.split(' ')
  groc_list = Hash.new(1)
  split_string.each do |item|
      groc_list[item] = 3
  end
  p groc_list
end


example_list = grocery_list(example_string)


# Method to add an item to a list
# input: item name and optional quantity
# steps: take item and quantity into a key-value pair
# output: updated hash

def add_item(input_list, input_item, input_quantity)
  input_list[input_item] = input_quantity
  p input_list
end

add_item(example_list, "cereal", 7)

# Method to remove an item from the list
# input: hash, key
# steps: call the .delete method
# output: updated hash

def delete_item(list, item)
  list.delete(item)
  p list
end

delete_item(example_list, "apples")


# Method to update the quantity of an item
# input: hash, key, value
# steps: change value for the input key in hash
# output: updated hash
def update_list(list, item, quantity)
  list[item] = quantity
  p list
end

update_list(example_list, "carrots", 10)


# Method to print a list and make it look pretty
# input:old hash
# steps: print words and key/value in a logical sentence
# output:updated hash

def pretty_list(list)
  list.each do
    |item, quantity| puts "We need #{quantity} #{item}" end
  p list
end


 pretty_list(example_list)

##### DRIVER CODE
# example_string = "carrots apples cereal pizza"
# grocery_list(example_string)



# Release 5- Reflect

# 1. I think my knowledge of pseudocoding is still the same. I am more used to coding a bit first before pseudocoding so I struggled a little. Despite that, since this challenge was a bit different it was a good change of pace having to do something differently.

#2. For this challenge, we only really worked with an array when we had to split a string. I feel like although array's may be a bit more simple to work with, hashes offer a better structure for the type of data we were using.

#3. A method by default, returns the value of the last statement.

#4. You can pass variables, strings, and integers in as arguments.

#5. You can pass information between methods by either assigning a global variable or by passing a resulting method variable through another method as an argument.

#6. I got a better understanding of how to use methods in different ways through this challenge. I also learned a new syntax for hashes that will really come in handy in the future. I'm still trying to get comfortable with using iterations in methods especially when setting perameters with different names, it can get pretty confusing for me.
