=begin
input: string
output: new string, in title case
e.g. 'four sCore and SEven' -> 'Four Score And Seven'

ALGO
split string into array of words
for each word in array
  capitalize first letter
  lowercase other letters
join array of words into new string
return new string
=end

def word_cap(str)
  words = str.split
  modified_words = words.map do |word|
    word.downcase.capitalize
  end
  modified_words.join(' ')
end

puts(word_cap('four score and seven') == 'Four Score And Seven')
puts(word_cap('the javaScript language') == 'The Javascript Language')
puts(word_cap('this is a "quoted" word') == 'This Is A "quoted" Word')
