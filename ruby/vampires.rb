# Release 1
# Gather basic data
#---------------------------
puts "What is your name?"
employee_name = gets.chomp
puts "How old are you?"
$employee_age = gets.chomp
# Employee age set as global variable for verify method
puts "What year were you born?"
$employee_birth_year = gets.chomp
# Employee birth year set as global variable for verify method
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
wants_garlic_bread = gets.chomp
puts "Would you like to enroll in the company’s health insurance?"
wants_health_ins = gets.chomp
#---------------------------
# Release 2
# Detection logic
#---------------------------
# Scenario 1
#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

# Determine if employee's age is mathematically correct
# Create method to perform calculation
def age_verify(age, birthyear)
  birthyear.to_i
  age.to_i
  2016 - birthyear == age
end
