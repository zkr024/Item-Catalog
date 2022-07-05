require_relative 'label'

class CreateLabel
  def create_label
    puts 'Choose a label to read? (Sci-Fi, Adventure, Fantasy)'
    title = gets.chomp

    puts 'Choose color of your label:'
    color = gets.chomp

    Label.new(title, color)
  end
end
