=begin
input: string, can be empty
output: new string, with all repeats squeezed

ALGO
return '' if input string is empty
initialize output string to first character of input string
For each remaining character in input string:
  if it's different to the last character in output string
    append it
  otherwise
    skip it
return output string
=end

def crunch(str)
  return '' if str == ''
  squeezed_str = str[0]
  str.each_char do |char|
    squeezed_str << char if char != squeezed_str[-1]
  end
  squeezed_str  
end

puts(crunch('ddaaiillyy ddoouubbllee') == 'daily double')
puts(crunch('4444abcabccba') == '4abcabcba')
puts(crunch('ggggggggggggggg') == 'g')
puts(crunch('a') == 'a')
puts(crunch('') == '')