=begin
PROBLEM
input: integer, 0, 1, 2, ...
output: string, decimal representation of input

ALGO
given 4321
  mod 10, divided by 1 -> 1 -> '1'
  mod 100, divided by 10 -> 2 -> '2'
  mod 1000, divided by 100 -> 3 -> '3'
  mod 10_000, divided by 1000 -> 4 -> '4'

In general:
initialize running_str to ''
for i from 10 until greater than input
  get mod i, divided by i / 10
  convert to str
  append to running_string
return running_string  
=end

INT_TO_STRING = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 =>'6',
  7 =>'7',
  8 => '8',
  9 => '9',
}

def integer_to_string(int)
  str = ''
  i = 1
  loop do
    num = (int % 10**i) / 10**(i - 1)
    str = INT_TO_STRING[num] + str
    break if 10**i > int
    i += 1
  end
  str
end

puts(integer_to_string(4321) == '4321')
puts(integer_to_string(0) == '0')
puts(integer_to_string(5000) == '5000')