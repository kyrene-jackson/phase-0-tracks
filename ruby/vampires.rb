results_found = false
#-------------------------------------------
# Release 1 gather basic data
#-------------------------------------------
puts "What is your name?"
name = gets.chomp.downcase
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year_born = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
garlic_bread_pref = gets.chomp.downcase
puts "Would you like to enroll in the company's health insurance? (yes or no)"
health_ins = gets.chomp.downcase
#-------------------------------------------
# Release 2 detection logic
#-------------------------------------------
#scenario 1
#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
#-------------------------------------------


#verify employee's age is mathematically correct
age_verify = false
calculated_year_born = (2016 - age)
if calculated_year_born == year_born
  age_verify = true
else
  age_verify = false
end

#check if employee is willing to eat garlic bread
will_eat_garlic_bread = false
if garlic_bread_pref == "yes"
  will_eat_garlic_bread = true
else
  will_eat_garlic_bread = false
end

#check if employee wants to sign up for health insurance
wants_health_insurance = false
if health_ins == "yes"
  wants_health_insurance = true
else
  wants_health_insurance = false
end

#if the employee got their age right AND is willing to eat garlic bread OR sign up for insurance print "probably not a vampire"
if age_verify && (will_eat_garlic_bread || wants_health_insurance)
  puts "Probably not a vampire."
  results_found = true
end

#-------------------------------------------
#scenario 2
#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#-------------------------------------------

if age_verify != true && (will_eat_garlic_bread != true || wants_health_insurance != true)
  puts "Probably a vampire."
  results_found = true
end

#-------------------------------------------
#scenario 3
#if the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#-------------------------------------------

if age_verify != true && (will_eat_garlic_bread != true && wants_health_insurance != true)
  puts "Almost certainly a vampire."
  results_found = true
end

#-------------------------------------------
#scenario 4
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#-------------------------------------------

if name == "drake cula" || name == "tu fang"
  puts "Definitely a vampire"
  results_found = true
end

#-------------------------------------------
#scenario 5
#Otherwise, print “Results inconclusive.”
#-------------------------------------------
if results_found = false
  puts "Results inconclusive"
end
