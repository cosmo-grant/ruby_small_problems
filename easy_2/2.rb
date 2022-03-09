SQMETRES_TO_SQFEET = 10.7639

puts "Enter the length in metres: "
length = gets.chomp.to_f
puts "Enter the width in metres: "
width = gets.chomp.to_f
area_m = length * width
area_ft = area_m * SQMETRES_TO_SQFEET
puts "Area in square metres is #{area_m.round(2)}."
puts "Area in square feet is #{area_ft.round(2)}."