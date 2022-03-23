=begin
input: starting and ending numbers
output: n/a
side-effect: prints numbers from start up to and including end,
  replacing some with 'fizz', 'buzz', or 'fizzbuzz'

ALGO
for each number from start to end
  set fizz_string to 'fizz' if number is divisible by 3 else ''
  set buzz_string to 'buzz' if number is divisible by 5 else ''
  print fizz_string plus buzz_string
=end

def fizzbuzz(start, final)
  start.upto(final) do |i|
    if i % 3 == 0 and i % 5 == 0
      puts 'fizzbuzz'
    elsif i % 3 == 0
      puts 'fizz'
    elsif i % 5 == 0
      puts 'buzz'
    else
      puts i
    end
  end
end

fizzbuzz(1, 15)