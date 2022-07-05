require_relative 'book'
require_relative 'create_label'
require_relative 'create_author'

class CreateBook
  def initialize
    @create_label = CreateLabel.new
    @create_author = CreateAuthor.new
  end

  def create_book
    puts 'Enter book title:'
    title = gets.chomp

    author = @create_author.create_author

    puts 'Enter publish date in order of YYYY-MM-DD:'
    publish_date = gets.chomp

    puts 'Enter name of publisher:'
    publisher = gets.chomp

    puts 'Enter book condition (bad, good, new):'
    cover_state = gets.chomp

    label = @create_label.create_label

    Book.new(title, publish_date, publisher, cover_state, author, label)
  end
end
