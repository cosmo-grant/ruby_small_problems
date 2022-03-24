=begin
input: string
output: true or false
rule: return true just if string can be spelled from blocks

convert blocks into array of arrays


convert string to uppercase
for each char in string
  return false if array containing char is not available
  remove array containing char
return true
=end

BLOCKS = "B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M"

def block_word?(str)
  blocks_as_arrays = BLOCKS.split.map { |block| block.split(':') }
  str = str.upcase
  str.each_char do |char|
    block_or_nil = blocks_as_arrays.find { |block| block.include?(char) }
    return false if !block_or_nil
    blocks_as_arrays.delete(block_or_nil)
  end
  true
end

puts(block_word?('BATCH') == true)
puts(block_word?('BUTCH') == false)
puts(block_word?('jest') == true)
