=begin
legnth 4 -> return 2nd and 3rd chars -> return chars at index 1 and 2
length 5 -> return 3rd char -> return char at index 2

if str has odd length
  return char at (length - 1 / 2)
else
  return chars at (length - 2 / 2) and (length / 2)
=end

def center_of(str)
  n = str.length
  case
  when n % 2 == 0
    str[n / 2 - 1, 2]
  when n % 2 == 1
    str[n / 2]
  end
end

puts(center_of('I love ruby') == 'e')
puts(center_of('Launch School') == ' ')
puts(center_of('Launch') == 'un')
puts(center_of('Launchschool') == 'hs')
puts(center_of('x') == 'x')