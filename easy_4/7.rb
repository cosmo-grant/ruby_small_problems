DIGITS_TO_INTS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
}

def string_to_integer(str)
  str = str.reverse
  total = 0
  str.chars.each_with_index do |digit, i|
    total += DIGITS_TO_INTS[digit] * 10**i
  end
  total
end

puts(string_to_integer('4321') == 4321)
puts(string_to_integer('570') == 570)