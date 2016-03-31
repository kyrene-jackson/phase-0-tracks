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
