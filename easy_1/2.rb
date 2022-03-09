def is_odd?(int)
  int % 2 == 1
end

puts is_odd?(-5)
puts is_odd?(5)
puts is_odd?(-4)
puts is_odd?(0)

def is_odd_again?(int)
  int % 2 != 0
end

puts is_odd_again?(-5)
puts is_odd_again?(5)
puts is_odd_again?(-4)
puts is_odd_again?(0)