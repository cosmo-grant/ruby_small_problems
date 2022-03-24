=begin
input: array
output: same array mutated, in ascending order
rule: must implement bubblesort

initialize made_swap to false
loop
  for each i from 0 to length of array - 2
    set first, second to array[i], array[i + 1]
    if second < first
      array[i], array[i + 1] = second, first
      set made_swap to true
until made_swap is false
return array  
=end

def bubble_sort!(arr)
  loop do
    made_swap = false
    0.upto(arr.size - 2) do |i|
      first, second = arr[i], arr[i + 1]
      if second < first
        arr[i], arr[i + 1] = second, first
        made_swap = true
      end
    end
    break if made_swap == false
  end
end

array = [5, 3]
bubble_sort!(array)
puts(array == [3, 5])

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts(array == [1, 2, 4, 6, 7])

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts(array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler))