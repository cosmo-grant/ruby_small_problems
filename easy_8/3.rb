=begin
input: string
output: array of strings, prefixes of input string
rule: output array must be in order, shortest to longest

initialize prefix to empty string
initialize empty array
for each char in string
  append char to prefix
  push prefix to array
return array
=end

def leading_substrings(str)
  prefix = ''
  arr = []
  str.each_char do |char|
    prefix += char
    arr << prefix
  end
  arr
end

puts(leading_substrings('abc') == ['a', 'ab', 'abc'])
puts(leading_substrings('a') == ['a'])
puts(leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy'])
