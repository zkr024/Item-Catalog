require_relative '../items/book'
require_relative 'create_author'
require_relative 'create_label'

class CreateBook
  def create_book(book, label, author)
    puts 'Enter book title:'
    title = gets.chomp

    create_author(author)

    puts 'Enter publish date in order of YYYY-MM-DD:'
    publish_date = gets.chomp

    puts 'Enter name of publisher:'
    publisher = gets.chomp

    puts 'Enter book condition (bad, good, new):'
    cover_state = gets.chomp

    create_label(label)

    new_book = Book.new(title, publish_date, publisher, cover_state, @author, @label)

    book << new_book

    puts 'Book succesfully added!!!'
  end
end
