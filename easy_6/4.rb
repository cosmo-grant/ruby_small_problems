=begin
input: array
output: array, same as input, but reversed in place
e.g. [1, 2, 3] -> [3, 2, 1]

ALGO
make a copy of input array
for each item in the copy
  push it to the front of the input array [3, 2, 1, 1, 2, 3]
delete in place the second half of the input array

=end

def reverse!(arr)
  copy = arr[0..]
  copy.each { |item| arr.unshift(item) }
  arr.pop(arr.size / 2)
  arr
end

list = [1,2,3,4]
result = reverse!(list)
puts(result == [4, 3, 2, 1]) # true
puts(list == [4, 3, 2, 1]) # true
puts(list.object_id == result.object_id) # true

list = %w(a b e d c)
puts(reverse!(list) == ["c", "d", "e", "b", "a"]) # true
puts(list == ["c", "d", "e", "b", "a"]) # true

list = ['abc']
puts(reverse!(list) == ["abc"]) # true
puts(list == ["abc"]) # true

list = []
puts(reverse!(list) == []) # true
puts(list == []) # true