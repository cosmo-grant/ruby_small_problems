NUM_TO_SUFFIX = {
  '1' => 'st',
  '2' => 'nd',
  '3' => 'rd',
}

def century(year)
  century = ((year - 1) / 100 + 1).to_s
  if century[-2] == '1'
    suffix = 'th'
  else
    suffix = NUM_TO_SUFFIX.fetch(century[-1], 'th')
  end
  century + suffix
end

puts(century(2000) == '20th')
puts(century(2001) == '21st')
puts(century(1965) == '20th')
puts(century(256) == '3rd')
puts(century(5) == '1st')
puts(century(10103) == '102nd')
puts(century(1052) == '11th')
puts(century(1127) == '12th')
puts(century(11201) == '113th')

