# Release 1 gather basic data
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year_born = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread_pref = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
health_ins = gets.chomp
# Release 2 detection logic
#if the employee got their age right AND is willing to eat garlic bread OR sign up for insurance => "Probably not a vampire"

#verify employee's age is mathematically correct
age_verify = false
calculated_year_born = (2016 - age)
if calculated_year_born == year_born
  age_verify = true
else
  age_verify = false  
end
