=begin
input: string representing time in 24hr clock
output: integer, number of minutes before/after midnight

ALGO
get number of hours
get number of minutes
compute total number of minutes
return total number of minutes

For before_midnight:
get number of minutes after midnight
number of minutes in day minus number of minutes after midnight
=end

MINS_IN_DAY = 60 * 24

def before_midnight(time_str)
  return 0 if time_str == '00:00' || time_str == '24:00'
  MINS_IN_DAY - after_midnight(time_str)
end

def after_midnight(time_str)
  hours, mins = time_str.split(':')
  hours = hours.to_i % 24
  mins = mins.to_i
  hours * 60 + mins  
end

puts(after_midnight('00:00') == 0)
puts(before_midnight('00:00') == 0)
puts(after_midnight('12:34') == 754)
puts(before_midnight('12:34') == 686)
puts(after_midnight('24:00') == 0)
puts(before_midnight('24:00') == 0)