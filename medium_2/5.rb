=begin
input: lengths of three sides
output: symbol (:equilateral, etc.) of triangle described by inputs

set arr = [a, b, c]
sort array in ascending order
return :invalid if triangle is invalid
return :equilateral if arr[0] == arr[2]
return :isosceles if arr[0] == arr[1] or arr[1] == arr[2]
return :scalene otherwise

TO CHECK IF INVALID
set arr = [a, b, c]
sort arr
return true if (any entries are <= 0) or (arr[0] + arr[1] <= arr[2])
=end

def triangle(a, b, c)
  arr = [a, b, c].sort
  return :invalid if invalid?(arr)
  return :equilateral if arr[0] == arr[2]
  return :isosceles if arr[0] == arr[1] || arr[1] == arr[2]
  return :scalene
end

def invalid?(arr)
  (arr.any? { |item| item <= 0 }) || (arr[0] + arr[1] <= arr[2])
end


puts(triangle(3, 3, 3) == :equilateral)
puts(triangle(3, 3, 1.5) == :isosceles)
puts(triangle(3, 4, 5) == :scalene)
puts(triangle(0, 3, 3) == :invalid)
puts(triangle(3, 1, 1) == :invalid)