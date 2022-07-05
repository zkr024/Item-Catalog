require_relative '../items/label'

def create_label(label)
  puts 'Choose a label to read? (Exe -Sci-Fi, Adventure, Fantasy)'
  @title_label = gets.chomp

  puts 'Choose color of your label:'
  @color = gets.chomp

  @label = Label.new(@title_label, @color)

  label << @label unless label.include?(@label)
end
