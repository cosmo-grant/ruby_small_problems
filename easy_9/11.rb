=begin
input: arr of words
output: n/a
side-effect: prints arrays of words which are anagrams

loop
  initialize arr to []
  pop word from input arr
  for each other_word in arr:
    if other_word is anagram of word
      remove it from input array
      push it to arr
  print arr
  break if input arr is empty
=end

def group_anagrams(arr)
  anagrams_hsh = arr.group_by { |word| word.chars.sort }
  anagrams_hsh.values.each { |arr| p arr }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

group_anagrams(words)