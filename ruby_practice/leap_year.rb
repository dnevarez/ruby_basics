puts "Enter a starting year"
start_year = gets.chomp.to_i

puts "Enter ending year"
end_year = gets.chomp.to_i

leap_years = ''

while start_year < end_year
  if start_year % 100 == 0 and start_year % 400 != 0
    start_year+=1
  elsif start_year % 100 == 0 and start_year % 400 == 0
    leap_years += "#{start_year}, "
    start_year+=1
  elsif start_year % 4 == 0
    leap_years += "#{start_year}, "
    start_year += 1
  else
    start_year += 1
  end
end

leap_years[-2] = ''

puts leap_years
