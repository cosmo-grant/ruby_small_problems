=begin
input: int
output: int
rule: output should be next feature number
a featured number is odd, multiple of 7, no repeated digits

CHECK WHETHER NUMBER IS FEATURED
To check no repeated digits:
  num -> string of digits -> arr
  get new array of unique entries
  check whether same length as original array
=end

def featured?(num)
  digits = num.to_s.chars
  num % 2 == 1 && num % 7 == 0 && digits.size == digits.uniq.size
end

def featured(num)
  current = next_multiple_of_7(num)
  loop do
    break if current >= 9_999_999_999
    return current if featured?(current)
    current += 7
  end    
  puts 'No bigger featured number.'
end

def next_multiple_of_7(num)
  (num + 1).upto(num + 7) do |k|
    return k if k % 7 == 0
  end
end

puts(featured(12) == 21)
puts(featured(20) == 21)
puts(featured(21) == 35)
puts(featured(997) == 1029)
puts(featured(1029) == 1043)
puts(featured(999_999) == 1_023_547)
puts(featured(999_999_987) == 1_023_456_987)

featured(9_999_999_999)