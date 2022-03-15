MINS_IN_DAY = 60 * 24

def time_of_day(int)
  int = int % MINS_IN_DAY
  hours, mins = int.divmod(60)
  hours_str = hours < 10 ? '0' + hours.to_s : hours.to_s
  mins_str = mins < 10 ? '0' + mins.to_s : mins.to_s
  hours_str + ':' + mins_str
end

puts(time_of_day(0) == "00:00")
puts(time_of_day(-3) == "23:57")
puts(time_of_day(35) == "00:35")
puts(time_of_day(-1437) == "00:03")
puts(time_of_day(3000) == "02:00")
puts(time_of_day(800) == "13:20")
puts(time_of_day(-4231) == "01:29")