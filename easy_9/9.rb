def get_grade(*score)
  case mean(score)
  when (90..100) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  when (0...60) then 'F'
  end
end

def mean(arr)
  arr.sum / arr.length
end

puts(get_grade(95, 90, 93) == "A")
puts(get_grade(50, 50, 95) == "D")