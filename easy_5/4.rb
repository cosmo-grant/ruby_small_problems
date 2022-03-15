=begin
input: string
output: string

ALGO
split string into array of words
for each word in array
  swap first and last characters
join array and return it


SUBALGO
get first char, middle chars, last char
swap first and last chars
return string
=end

def swap_chars(word)
  if word.length == 1
    word
  else
    word[-1] + word[1...-1] + word[0]
  end
end

def swap(string)
  string.split.map { |word| swap_chars(word) }.join(' ')
end

puts(swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si')
puts(swap('Abcde') == 'ebcdA')
puts(swap('a') == 'a')