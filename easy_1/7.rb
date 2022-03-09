def stringy(int)
  one_or_zero = '1'
  string = ''
  int.times do |_|
    string << one_or_zero
    if one_or_zero == '1'
      one_or_zero = '0'
    else
      one_or_zero = '1'
    end
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'