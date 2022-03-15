def triangle(n)
  1.upto(n) do |i|
    puts ' ' * (n - i) + '*' * i
  end
end

triangle(5)