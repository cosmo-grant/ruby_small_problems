puts "Enter your word(s): "
words = gets.chomp
num_chars = words.length - words.count(' ')
puts "There are #{num_chars} characters, excluding spaces, in \"#{words}\"."