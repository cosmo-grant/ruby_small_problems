def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |num1|
    arr2.each do |num2|
      products << num1 * num2
    end
  end
  products.sort
end

puts(multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16])