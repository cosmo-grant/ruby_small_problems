def include?(arr, val)
  arr.each do |item|
    return true if item == val
  end
  return false
end

puts(include?([1,2,3,4,5], 3) == true)
puts(include?([1,2,3,4,5], 6) == false)
puts(include?([], 3) == false)
puts(include?([nil], nil) == true)
puts(include?([], nil) == false)