require_relative './save_album'
require_relative './save_genre'
require_relative './save_book'
require_relative './save_label'
require_relative './save_author'

def save_data(album, genre, book, label, author)
  save_album(album)
  save_genre(genre)
  save_book(book)
  save_label(label)
  save_author(author)
  puts 'Thank you for using the app!'
end
