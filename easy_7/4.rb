=begin
input: string
output: new string, every letter swapped case and other characters unchanged

ALGO
initialize new string to ''
for each character in input string
  if it's a capital letter
    append lowercase version to new string
  elsif it's lowercase letter
    append uppercase version to new string
  else
    append character to new string
return new string
=end

def swapcase(str)
  new_str = ''
  str.each_char do |char|
    case char
    when ('a'..'z') then new_str << char.upcase
    when ('A'..'Z') then new_str << char.downcase
    else new_str << char
    end
  end
  new_str
end

puts(swapcase('CamelCase') == 'cAMELcASE')
puts(swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv')