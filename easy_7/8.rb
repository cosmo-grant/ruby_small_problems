def multiply_list(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |num, i|
    new_arr << num * arr2[i]
  end
  new_arr
end

def multiply_list_zip(arr1, arr2)
  arr1.zip(arr2).map { |pair| pair[0] * pair[1] }
end

puts(multiply_list_zip([3, 5, 7], [9, 10, 11]) == [27, 50, 77])