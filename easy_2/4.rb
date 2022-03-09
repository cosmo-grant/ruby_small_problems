print "Age? "
age = gets.chomp.to_i
print "Retirement age? "
retirement_age = gets.chomp.to_i

year_now = Time.now.year
years_until_retirement = retirement_age - age

puts "Today is #{year_now}."
puts "You'll retire in #{year_now + years_until_retirement}."
puts "Only #{years_until_retirement} years of work to go."