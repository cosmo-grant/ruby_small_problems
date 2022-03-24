=begin
input: str
output: bool
rule: return true just if parentheses ( ) are balanced

initialize empty array
for each char in str
  if char is '('
    push char to array
  if char is ')'
    return false if array is empty
    pop from array
return true if array is empty else false

=end

def balanced?(str)
  stack = []
  str.each_char do |char|
    case char
    when '('
      stack.push(char)
    when ')'
      return false if stack.empty?
      stack.pop
    end
  end
  stack.empty?
end

puts(balanced?('What (is) this?') == true)
puts(balanced?('What is) this?') == false)
puts(balanced?('What (is this?') == false)
puts(balanced?('((What) (is this))?') == true)
puts(balanced?('((What)) (is this))?') == false)
puts(balanced?('Hey!') == true)
puts(balanced?(')Hey!(') == false)
puts(balanced?('What ((is))) up(') == false)