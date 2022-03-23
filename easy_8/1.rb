=begin
input: array of numbers
output: number, sum of summed initial segments of input array

initialize total to 0
for i from 1 to size of input array
  extract first i elements
  sum them
  add the sum to total
return total
=end

def sum_of_sums(arr)
  total = 0
  (1..arr.size).each do |i|
    total += arr[0, i].sum
  end
  total
end

puts(sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2))
puts(sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3))
puts(sum_of_sums([4]) == 4)
puts(sum_of_sums([1, 2, 3, 4, 5]) == 35)