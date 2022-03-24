=begin
set angles = [a, b, c]
if angles.sum != 180 or any angle < 0
  return :invalid
if any angle is 90
  return :right
if all angles are less than 90
  return :acute
else
  return :obtuse
=end

def triangle(a, b, c)
  angles = [a, b, c]
  case
  when angles.sum != 180 || angles.any? { |angle| angle <= 0 }
    :invalid
  when angles.any? { |angle| angle == 90 }
    :right
  when angles.any? { |angle| angle > 90 }
    :obtuse
  else
    :acute
  end
end

puts(triangle(60, 70, 50) == :acute)
puts(triangle(30, 90, 60) == :right)
puts(triangle(120, 50, 10) == :obtuse)
puts(triangle(0, 90, 90) == :invalid)
puts(triangle(50, 50, 50) == :invalid)