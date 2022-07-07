def date
  puts 'Publish date:'
  print 'Year: '
  year = gets.chomp
  print 'Month: '
  month = gets.chomp
  print 'Day: '
  day = gets.chomp
  @date = "#{year}/#{month}/#{day}"
end
