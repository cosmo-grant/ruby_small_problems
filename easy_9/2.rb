=begin
input: number
output: number, twice input number if input number isn't a double number, else input number

if input is double number
  return input
else
  return 2 * input

convert input to string
return true if string has even length and first half equals second half
=end

def twice(num)
  double_number?(num) ? num : 2 * num
end

def double_number?(num)
  digits = num.to_s
  length = digits.length
  length % 2 == 0 && digits[0...(length / 2)] == digits[(length / 2)..]
end

puts(twice(37) == 74)
puts(twice(44) == 44)
puts(twice(334433) == 668866)
puts(twice(444) == 888)
puts(twice(107) == 214)
puts(twice(103103) == 103103)
puts(twice(3333) == 3333)
puts(twice(7676) == 7676)
puts(twice(123_456_789_123_456_789) == 123_456_789_123_456_789)
puts(twice(5) == 10)