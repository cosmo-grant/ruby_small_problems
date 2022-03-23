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

def is_palindrome?(str)
  str.length > 1 && str == str.reverse
end

def palindromes(str)
  substrings(str).select { |substring| is_palindrome?(substring) }
end

puts(palindromes('abcd') == [])
puts(palindromes('madam') == ['madam', 'ada'])
puts(palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
])
puts(palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
])