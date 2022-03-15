=begin
input: string
output: hash of word => number pairs

ALGORITHM
initialize empty hash
string ['a word b']
-> array of words ['a', 'word', 'b']
-> array of words [1, 4, 1]
For each word in array of words
  if word is a new key:
    set hash[word] to 1
  else
    increment hash[word]
return hash
=end

def word_sizes(string)
  hsh = {}
  string.split.each do |word|
    len = word.length
    hsh.key?(len) ? hsh[len] += 1 : hsh[len] = 1
  end
  hsh
end

puts(word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 })
puts(word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 })
puts(word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 })
puts(word_sizes('') == {})

  