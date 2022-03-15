def rotate_array(arr)
  arr[1..-1] + arr[0, 1]
end

def rotate_rightmost_digits(number, num_digits)
  digits = number.to_s.chars
  rotated_digits = digits[0...-num_digits] + 
    rotate_array(digits[-num_digits, num_digits])
  rotated_digits.join('').to_i
end

puts (rotate_rightmost_digits(735291, 1) == 735291)
puts (rotate_rightmost_digits(735291, 2) == 735219)
puts (rotate_rightmost_digits(735291, 3) == 735912)
puts (rotate_rightmost_digits(735291, 4) == 732915)
puts (rotate_rightmost_digits(735291, 5) == 752913)
puts (rotate_rightmost_digits(735291, 6) == 352917)
