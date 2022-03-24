require 'date'

def friday_13th(year)
  Date.new(year).step(Date.new(year, -1, -1)).count do |day|
    day.friday? && day.day == 13
  end
end

puts(friday_13th(2015) == 3)
puts(friday_13th(1986) == 1)
puts(friday_13th(2019) == 2)