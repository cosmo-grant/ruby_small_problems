=begin
initialize empty array
initialize string to input string
until string is empty
  concatenate leading_substrings(string) to array
  remove first character from string
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

def substrings(str)
  arr = []
  loop do
    arr.concat(leading_substrings(str))
    str = str[1..]
    break if str == ''
  end
  arr
end

puts(substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
])


