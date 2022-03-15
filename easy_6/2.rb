=begin
input: array of string, ['hello', 'yellow', 'a']
output: array of same strings, but with vowels removed, ['hll', 'yllw', '']

ALGO
for each string in array of strings
  remove vowels in place
return array
=end

def remove_vowels(arr)
  arr.each do |str|
    str.gsub!(/[aeiouAEIOU]/, '')
  end
end

puts(remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz))
puts(remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht))
puts(remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ'])