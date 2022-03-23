=begin
input: number (positive, whole)
output: array of ints, which lights are on after toggling procedure

How to represent state of n lights? Array of length n, false = off, true = on.

initialize arr of size n, all entries false
for i from 1 to n
  initialize current_index to i
  while i is less than or equal to n
    toggle entry at current_index
    increment current_index by i 
for each index, entry in arr
  push index to on_lights if entry is true
return on_lights
=end

def on_lights(n)
  lights = [false] * n
  (1..n).each do |i|
    current_index = i - 1
    while current_index <= n - 1
      lights[current_index] = !lights[current_index]
      current_index += i
    end
  end
  on_lights = []
  lights.each_with_index do |bool, index|
    on_lights << index + 1 if bool
  end
  on_lights
end

p on_lights(5)
p on_lights(1000)