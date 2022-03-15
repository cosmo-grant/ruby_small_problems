def rotate_array(arr)
  arr[1..-1] + arr[0, 1]
end

def max_rotation(number)
  digits = number.to_s.chars
  digits.size.times do |i|
    fixed = digits[0, i]
    rest = digits[i...digits.size]
    digits = fixed + rotate_array(rest)
  end
  digits.join('').to_i
end

puts (max_rotation(735291) == 321579)
puts (max_rotation(3) == 3)
puts (max_rotation(35) == 53)
puts (max_rotation(105) == 15)
puts (max_rotation(8_703_529_146) == 7_321_609_845)