print "Integer >0: "
int = gets.chomp.to_i
print "Sum (s) or product (p)? "
s_or_p = gets.chomp
if s_or_p == 's'
  operation = 'sum'
  result = (1..int).reduce(&:+)
else
  operation = 'product'
  result = (1..int).reduce(&:*)
end
puts "The #{operation} of all numbers between 1 and #{int} is #{result}."
