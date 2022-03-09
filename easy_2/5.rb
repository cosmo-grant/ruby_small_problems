print "What's your name? "
name = gets.chomp
if name[-1] == '!'
  name = name[...-1]
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end