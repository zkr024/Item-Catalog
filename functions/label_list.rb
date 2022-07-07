class LabelList
  def label_list(label)
    if label.empty?
      puts "Sorry, there're no labels"
    else
      puts 'List of labels: '
      (label.map.with_index do |l, i|
        puts "#{i + 1}) Type of book: #{l.title} - Color: #{l.color}"
      end)
    end
  end
end
