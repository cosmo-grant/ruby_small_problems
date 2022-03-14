def oddities(arr)
  odd_items = []
  arr.each_with_index do |item, i|
     odd_items << item if i % 2 == 0
  end
  odd_items
end

puts(oddities([2, 3, 4, 5, 6]) == [2, 4, 6])
puts(oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5])
puts(oddities(['abc', 'def']) == ['abc'])
puts(oddities([123]) == [123])
puts(oddities([]) == [])