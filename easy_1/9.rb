def sum(int)
  int.to_s
    .chars
    .reduce(0) { |sum, digit| sum + digit.to_i }
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45