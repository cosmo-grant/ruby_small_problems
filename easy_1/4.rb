def count_occurrences(arr)
  counts = {}
  arr.each do |item|
    if counts.key?(item)
      counts[item] += 1
    else
      counts[item] = 1
    end
  end

  counts.each do |k, v|
    puts "#{k} => #{v}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)