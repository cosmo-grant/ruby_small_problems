file = File.open("pg84.txt")
file_text = file.read
sentences = file_text.split(/[\.!\?]/)
longest_sentence = sentences.max_by { |sentence| sentence.split.length }
puts longest_sentence
puts longest_sentence.split.length