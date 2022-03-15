=begin
input: string
output: new string, like the input but staggered capitalization

ALGO
initialize new string to ''
for each character, index in input string
  if index is even and character is letter
    capitalize character
    append it to new string
  if index is odd and character is letter
    downcase character
    append it to new string
  if character is not letter
    append it to new string
return new string

=end

def staggered_case(str)
  new_str = ''
  str.chars.each_with_index do |char, i|
    if char =~ /[a-zA-Z]/ && (i % 2 == 0)
      new_str << char.upcase
    elsif char =~ /[a-zA-Z]/ && (i % 2 == 1)
      new_str << char.downcase
    else
      new_str << char
    end
  end
  new_str  
end

puts(staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!')
puts(staggered_case('ALL_CAPS') == 'AlL_CaPs')
puts(staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS')