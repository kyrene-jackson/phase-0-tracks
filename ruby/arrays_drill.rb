# Release 2
# At the top of your file, add a method that takes three items as parameters and returns an array of those items.
def build_array(array_1, array_2, array_3)
  result = []
  result << array_1
  result << array_2
  result << array_3
  p result
end
# At the top of your file, add a method that takes an array and an item as parameters, and returns the array with the item added.
def add_to_array(new_array, new_item)
   new_array << new_item
   p new_array
end
# Print a few test calls of the method.
add_to_array(["monday", "tuesday", "friday"], "saturday")

#-------------------------------------------
# Release 1
# Initialize an empty array. Print the array
example_array = []
p example_array
# Add five items to the array. Print the array
example_array.insert(0,'pizza')
example_array.insert(1, 'brownies')
example_array.insert(2, 'cupcakes')
example_array.insert(3, 'soda')
example_array.insert(4, 'candy')
p example_array
# Delete the item at index 2. Print the array
example_array.delete_at(2)
p example_array
# Insert a new item at index 2. Print the array.
example_array.insert(2, 'ice cream')
p example_array
# Remove the first item of the array without having to refer to its index. Print the array.
example_array.delete('pizza')
p example_array
# Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)
array_result = example_array.include?("soda")
puts "This array contains the word soda - #{array_result}"
# Initialize another array that already has a few items in it.
another_array = ['breakfast', 'lunch', 'dinner', 'dessert']
# Add the two arrays together and store them in a new variable. Print the new array.
final_array = example_array + another_array
p final_array
#-------------------------------------------
# Release 2 (continued)
# At the bottom of the file, call the method to show that it works.

build_array("summer", "spring", "fall")
