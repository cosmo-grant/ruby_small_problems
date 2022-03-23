=begin
input: str
output: new str, each char from input string doubled
e.g. 'hello' -> 'hheelllloo'

initialize empty new_str
for each char in str
  append char to new_str twice
return new_str
=end

def repeater(str)
  new_str = ''
  str.each_char do |char|
    new_str << char
    new_str << char
  end
  new_str
end

puts(repeater('Hello') == "HHeelllloo")
puts(repeater("Good job!") == "GGoooodd  jjoobb!!")
puts(repeater('') == '')