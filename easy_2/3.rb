print "Bill? "
bill = gets.chomp.to_f
print "Tip percentage? "
tip_percent = gets.chomp.to_f
puts
tip = tip_percent / 100 * bill
total = bill + tip
puts "The tip is #{tip}."
puts "The total is #{total}."
