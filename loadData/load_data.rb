require_relative './album_data'
require_relative './genre_data'
require_relative './book_data'
require_relative './lable_data'
require_relative './author_data'

def load_data(album, genre, book, label, author)
  album_data(album)
  genre_data(genre)
  book_data(book)
  label_data(label)
  author_data(author)
end
