def rotate_array(arr)
  new_arr = arr[0, arr.size]
  new_arr << new_arr.shift
  new_arr
end

x = [1, 2, 3, 4]
puts(rotate_array(x) == [2, 3, 4, 1])
puts(x == [1, 2, 3, 4])