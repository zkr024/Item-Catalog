require 'json'

class Store
  def store_book(obj)
    File.write('./data/books_data.json', obj)
  end

  def show_books
    book_file = File.open('./data/books_data.json')
    file_info = book_file.read
    return [] if file_info == ''

    JSON.parse(file_info, symbolize_name: true)
    author = Author.new(book[:author][:first_name], book[:author][:last_name])
      label = Label.new(book[:label][:title], book[:label][:color])
      Book.new(book[:title], book[:publish_date], book[:publisher], book[:cover_state], author, label)
    end
  end
end
