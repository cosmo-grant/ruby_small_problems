def halvsies(arr)
  split_point = (arr.length + 1) / 2
  [
    arr[...split_point],
    arr[split_point..],
  ]
end

puts(halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]])
puts(halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]])
puts(halvsies([5]) == [[5], []])
puts(halvsies([]) == [[], []])