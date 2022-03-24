=begin
input: num
output: num, square of sum - sum of squares

SQUARE_OF_SUM


SUM_OF_SQUARES

=end

def sum_square_difference(num)
  square_of_sum(num) - sum_of_squares(num)
end

def square_of_sum(num)
  1.upto(num).reduce(:+) ** 2
end

def sum_of_squares(num)
  1.upto(num).reduce(0) do |acc, i|
    acc + i ** 2
  end
end

puts(sum_square_difference(3) == 22)
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts(sum_square_difference(10) == 2640)
puts(sum_square_difference(1) == 0)
puts(sum_square_difference(100) == 25164150)