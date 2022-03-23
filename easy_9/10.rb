def buy_fruit(items_and_quantities)
  items_only = []
  items_and_quantities.each do |item, quantity|
    quantity.times { |_| items_only << item }
  end
  items_only
end

puts(buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"])