=begin
input: odd integer n
output: n/a
side-effect: prints a 4-pointed diamond in an nxn grid

for each odd integer k from 1 thru n
  print k asterisks, centered in line of width n, with new line at end

=end

def diamond(n)
  1.upto(n) do |k|
    puts ('*' * k).center(n) if k % 2 == 1
  end
  (n - 2).downto(1) do |k|
    puts ('*' * k).center(n) if k % 2 == 1
  end
end

diamond(9)