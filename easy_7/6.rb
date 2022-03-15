def staggered_case(str)
  new_str = ''
  need_upper = true
  str.each_char do |char|
    if char =~ /[a-zA-Z]/
      if need_upper
        new_str << char.upcase
      else
        new_str << char.downcase
      end
      need_upper = !need_upper
    else
      new_str << char
    end
  end
  new_str  
end

puts(staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!')
puts(staggered_case('ALL CAPS') == 'AlL cApS')
puts(staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs')