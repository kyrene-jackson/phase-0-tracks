# Release 1
# Gather basic data
#---------------------------
puts "What is your name?"
employee_name = gets.chomp
puts "How old are you?"
employee_age = gets.chomp.to_i
puts "What year were you born?"
employee_birth_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
wants_garlic_bread = gets.chomp.downcase
puts "Would you like to enroll in the company’s health insurance? (yes or no)"
wants_health_ins = gets.chomp.downcase
#---------------------------
# Release 2
# Detection logic
#---------------------------
# Scenario 1
#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

# Determine if employee's age is mathematically correct.
# Assign value to calculated_age
calculated_age = 2016 - employee_birth_year
# Set conditional statement
if calculated_age == employee_age && (wants_garlic_bread == "yes" || wants_health_ins == "yes")
  puts "Probably not a vampire."
end
