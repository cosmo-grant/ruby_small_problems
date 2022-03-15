=begin
input: angle (float), e.g. 76.73
output: string, representing input angle in degrees, minutes, seconds

ALGO
convert input angle to number of seconds
degrees is number of seconds / num seconds in degrees
rem1 is number of seconds leftover
minutes is rem1 / num seconds in minute
secs is rem2
convert mins, secs to two-digit strings
return properly formatted string
=end

DEGREE = "\xC2\xB0"
MINS_IN_DEG = 60
SECS_IN_MIN = 60
SECS_IN_DEG = SECS_IN_MIN * MINS_IN_DEG

def dms(angle)
  num_secs = angle * SECS_IN_DEG

  num_degs, rem = num_secs.divmod(SECS_IN_DEG)
  num_mins, num_secs = rem.divmod(SECS_IN_MIN)

  num_secs = num_secs.round(0)
  str_degs = num_degs.to_s
  str_mins = pad(num_mins.to_s, 2)
  str_secs = pad(num_secs.to_s, 2)
  return str_degs + DEGREE + str_mins + "'" + str_secs + '"'
end

def pad(str, length, padding='0')
  if str.length < length
    padding * (length - str.length) + str
  else
    str
  end
end

puts(dms(30) == %(30°00'00"))
puts(dms(76.73) == %(76°43'48"))
puts(dms(254.6) == %(254°36'00"))
puts(dms(93.034773) == %(93°02'05"))
puts(dms(0) == %(0°00'00"))
puts(dms(360) == %(360°00'00") || dms(360) == %(0°00'00"))