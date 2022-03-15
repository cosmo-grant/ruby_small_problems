def bannerizer(text)
  length = text.length
  row = '+-' + '-' * length + '-+'
  puts row
  puts '| ' + ' ' * length + ' |'
  puts '| ' + text + ' |'
  puts '| ' + ' ' * length + ' |'
  puts row
end

bannerizer('To boldly go where no one has gone before.')
bannerizer('')