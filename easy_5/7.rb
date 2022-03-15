def word_sizes(string)
  hsh = {}
  string.split.each do |word|
    word.gsub!(/[^a-zA-Z]/, '')
    len = word.length
    hsh.key?(len) ? hsh[len] += 1 : hsh[len] = 1
  end
  hsh
end

puts(word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 })
puts(word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 })
puts(word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 })
puts(word_sizes('') == {})