puts "Enter the first number:"
first_num = gets.chomp.to_i
puts "Enter the second number:"
second_num = gets.chomp.to_i

ops = [:+, :-, :*, :/, :%, :**]

ops.each do |op|
  result = first_num.send(op, second_num)
  puts "#{first_num} #{op} #{second_num} = #{result}"
end