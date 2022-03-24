=begin
input: string
output: hash, containing percentages of lowercase, uppercase, neither chars

initialize lower_count, upper_count, neither_count to 0
for each char in input string
  if the char is lowercase
    increment lower_count
  if the char is uppercase
    increment upper_count
  else
    increment neither_count

set length to length of input string
lower_pct = lower_count / length * 100
upper_pct = upper_count / length * 100
neither_pct = neither_count / length * 100

store in hash
return hash
=end

def letter_percentages(str)
  lower_count, upper_count, neither_count = 0, 0, 0
  str.each_char do |char|
    case 
    when char =~ /[a-z]/ then lower_count += 1
    when char =~ /[A-Z]/ then upper_count += 1
    else neither_count += 1
    end
  end
  length = str.length
  lower_pct = count_to_percentage(lower_count, length)
  upper_pct = count_to_percentage(upper_count, length)
  neither_pct = count_to_percentage(neither_count, length)
  { lowercase: lower_pct, uppercase: upper_pct, neither: neither_pct }
end

def count_to_percentage(count, total)
  count.to_f / total * 100
end

puts(letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 })
puts(letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 })
puts(letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 })