# Release 1
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
# Release 2
# Detection logic
#---------------------------

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
if (calculated_age != employee_age && calculated_age != 2016) &&   (wants_garlic_bread == "no" || wants_health_ins == "no")
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
  puts "Probably not a vampire."
when "two"
  puts "Probably a vampire."
when "three"
  puts "Almost certainly a vampire."
when "four"
  puts "Definitely a vampire."
when "five"
  puts "Results inconclusive."
else
  puts "Results inconclusive."
end
