arr = []
num_to_string = {
  1 => '1st',
  2 => '2nd',
  3 => '3rd',
  4 => '4th',
  5 => '5th',
  6 => 'last'
}

6.times do |i|
  puts "=> Enter the #{num_to_string[i+1]} number: "
  arr << gets.chomp.to_i
end

if arr[0, 5].include?(arr[5])
  puts "=> The number #{arr[5]} appears in #{arr[0, 5]}."
else
  puts "=> The number #{arr[5]} does not appear in #{arr[0, 5]}."
end