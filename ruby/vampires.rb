# Ask how many employees are taking survey [LOOP 1]
puts "Hello! How many employees will be processed?"
number_of_employees = gets.chomp.to_i
employee_count = 0
until employee_count == number_of_employees
  employee_count += 1
#---------------------------
# Ask employee to list allergies one at a time, end loop when employee types 'done'
puts "Before we begin, please list any allergies you have one at a time. Type 'done' when you are finished"
valid_response = false
$employee_allergy = nil
#[LOOP 2]
until valid_response
  puts "allergies:"
  $employee_allergy = gets.chomp
if $employee_allergy == "done"
  valid_response
elsif $employee_allergy == "sunshine"
  $employee_allergy = "sunshine"
end
break if $employee_allergy == "done"
break if $employee_allergy == "sunshine"
end

# Go straight to result 2 if they type "sunshine"
auto_result = false
if $employee_allergy == "sunshine"
  auto_result = true
  puts "Survey result: Probably a vampire"
end

break if auto_result

#---------------------------
# Gather basic data
#---------------------------
puts "What is your name?"
employee_name = gets.chomp.downcase
puts "How old are you?"
employee_age = gets.chomp.to_i
puts "What year were you born?"
employee_birth_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
wants_garlic_bread = gets.chomp.downcase
puts "Would you like to enroll in the company’s health insurance? (yes or no)"
wants_health_ins = gets.chomp.downcase
#---------------------------
# Detection logic
#---------------------------

# Scenario 1
#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

# Determine if employee's age is mathematically correct.
# Assign value to calculated_age
calculated_age = 2016 - employee_birth_year
# Set conditional statement
if calculated_age == employee_age && (wants_garlic_bread == "yes" || wants_health_ins == "yes")
  # puts "Probably not a vampire."
  # Assign a survey result
  survey_result = "one"
end

#---------------------------
# Scenario 2
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
if (calculated_age != employee_age && calculated_age != 2016) && (wants_garlic_bread == "no" || wants_health_ins == "no")
  #puts "Probably a vampire"
  survey_result = "two"
end

#---------------------------
# Scenario 3
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”

if (calculated_age != employee_age && calculated_age != 2016) && (wants_garlic_bread == "no" && wants_health_ins == "no")
  #puts "Almost certainly a vampire"
  survey_result = "three"
end

#---------------------------
# Scenario 4
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”

if employee_name == "drake cula" || employee_name == "tu fang"
  # puts "Definitely a vampire"
  survey_result = "four"
end
#---------------------------

case survey_result
when "one"
  puts "Survey Result: Probably not a vampire."
when "two"
  puts "Survey Result: Probably a vampire."
when "three"
  puts "Survey Result: Almost certainly a vampire."
when "four"
  puts "Survey Result: Definitely a vampire."
when "five"
  puts "Survey Result: Results inconclusive."
else
  puts "Survey Result: Results inconclusive."
end
end

#Message before exit
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
