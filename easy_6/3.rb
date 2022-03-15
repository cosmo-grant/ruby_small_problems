=begin
input: integer >= 2, representing a number of decimal digits
output: integer >= 1, representing an index
rule: output index should be index of first element with input-many digits

ALGO
initialize first, second to 1, 1
generate fib numbers until latest number has at least input-many digits
return latest number
=end

FIB = [1, 1]

def find_fibonacci_index_by_length(num_digits)
  while true do
    break if decimal_length(FIB.last) >= num_digits
    first, second = FIB[-2, 2]
    FIB.push(first + second)
  end
  1 + FIB.find_index { |num| decimal_length(num) >= num_digits }
end

def decimal_length(num)
  num.to_s.length
end



puts(find_fibonacci_index_by_length(2) == 7)
puts(find_fibonacci_index_by_length(3) == 12)
puts(find_fibonacci_index_by_length(10) == 45)
puts(find_fibonacci_index_by_length(100) == 476)
puts(find_fibonacci_index_by_length(1000) == 4782)
puts(find_fibonacci_index_by_length(10000) == 47847)