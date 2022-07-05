require 'json'
require_relative '../items/book'
require_relative '../items/author'
require_relative '../items/label'

def book_data(book)
  File.write('./data/book.json', JSON.pretty_generate([])) unless File.exist?('./data/book.json')
  @file_book = File.read('./data/book.json')
  return if @file_book.empty?

  data_book = JSON.parse(@file_book)
  data_book.map do |value|
    title = value['Title']
    published = value['Published']
    publisher = value['Publisher']
    status = value['Status']
    first_name = value['Author_Last_Name']
    last_name = value['Author_Last_Name']
    type = value['Type']
    color = value['Color']
    author = Author.new(first_name, last_name)
    label = Label.new(type, color)
    book_array = Book.new(title, published, publisher, status, author, label)
    book << book_array
  end
end
