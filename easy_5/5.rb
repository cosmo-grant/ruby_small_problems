def cleanup(string)
  alpha_only = string.gsub(/[^a-z]/, ' ')
  prefix = alpha_only.start_with?(' ') ? ' ' : ''
  suffix = alpha_only.end_with?(' ') ? ' ' : ''
  prefix + alpha_only.split.join(' ') + suffix
end

puts(cleanup("---what's my +*& line?") == ' what s my line ')