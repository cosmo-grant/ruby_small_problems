def interleave(arr1, arr2)
  new_arr = []
  arr1.length.times do |i|
    new_arr.push(arr1[i])
    new_arr.push(arr2[i])
  end
  new_arr
end

puts(interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c'])