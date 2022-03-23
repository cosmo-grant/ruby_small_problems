=begin
input: str
output: new str, like input str but every consonant in input string doubled

initialize empty new_str
for each char in input str
  if char is a consonant
    append it twice to new_str
  else
    append it once to new_str
return new_str
=end

CONSONANTS = 'bcdfghjklmnpqrstvwxyz'

def double_consonants(str)
  new_str = ''
  str.each_char do |char|
    new_str << char
    if is_consonant?(char)
      new_str << char
    end
  end
  new_str
end

def is_consonant?(char)
  CONSONANTS.include?(char.downcase)
end

puts(double_consonants('String') == "SSttrrinngg")
puts(double_consonants("Hello-World!") == "HHellllo-WWorrlldd!")
puts(double_consonants("July 4th") == "JJullyy 4tthh")
puts(double_consonants('') == "")
