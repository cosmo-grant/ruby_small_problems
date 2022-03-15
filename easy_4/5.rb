def multisum(int)
  sum = 0
  (1..int).each do |i|
    sum += i if i % 3 == 0 || i % 5 == 0
  end
  sum
end

def multisum_2(int)
  (1..int).reduce(0) do |sum, i|
    if i % 3 == 0 || i % 5 == 0
      sum + i
    else
      sum
    end
  end
end

puts (multisum(3) == 3)
puts (multisum(5) == 8)
puts (multisum(10) == 33)
puts (multisum(1000) == 234168)
puts (multisum_2(3) == 3)
puts (multisum_2(5) == 8)
puts (multisum_2(10) == 33)
puts (multisum_2(1000) == 234168)