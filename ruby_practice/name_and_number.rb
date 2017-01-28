puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
full_name_length = (first_name + middle_name + last_name).length
puts "#{first_name.capitalize} did you know there are #{full_name_length} letters in your name?"


puts 'What is your favorite number?'
number = gets.chomp
better = number.to_i + 1
puts "#{first_name.capitalize}, #{better.to_s} is a bigger and better number. It should be your new favorite."
