DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_integer_to_string(number)
  abs_number = number < 0 ? -number : number
  case number
  when ..-1 then '-' + integer_to_string(abs_number)
  when 0 then '0'
  when 1.. then '+' + integer_to_string(abs_number)
  end
end

def integer_to_string(number)
  str = ''
  loop do
    number, unit = number.divmod(10)
    str.prepend(DIGITS[unit])
    break if number == 0
  end
  str
end

puts(integer_to_string(4321) == '4321')
puts(integer_to_string(0) == '0')
puts(integer_to_string(5000) == '5000')
puts (signed_integer_to_string(4321) == '+4321')
puts (signed_integer_to_string(-123) == '-123')
puts (signed_integer_to_string(0) == '0')