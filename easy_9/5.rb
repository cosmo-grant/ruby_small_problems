=begin
for each char in str
  if char is alphabetic lowercase
    return false
return true

check whether RXP matches str
where RXP matches only alphabetic lowercase
flip truth value
=end

def uppercase?(str)
  !(/[a-z]/ =~ str)
end

puts(uppercase?('t') == false)
puts(uppercase?('T') == true)
puts(uppercase?('Four Score') == false)
puts(uppercase?('FOUR SCORE') == true)
puts(uppercase?('4SCORE!') == true)
puts(uppercase?('') == true)