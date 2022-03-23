=begin
input: n, positive integer
output: number, nth Fib number

ALGO
if n equals 1 or 2
  return 1
else
  return Fib(n - 1) + Fib(n - 2)
=end

def fibonacci(n)
  if n == 1 || n == 2
    1
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

puts(fibonacci(1) == 1)
puts(fibonacci(2) == 1)
puts(fibonacci(3) == 2)
puts(fibonacci(4) == 3)
puts(fibonacci(5) == 5)
puts(fibonacci(12) == 144)
puts(fibonacci(20) == 6765)