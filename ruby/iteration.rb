def say_hello
  x = "Mandy"
  y = "Kyrene"
  puts "Before block"
  yield(x, y)
  puts "After block!"
end

say_hello { |x, y| puts "Hi #{x} and #{y}!" }
