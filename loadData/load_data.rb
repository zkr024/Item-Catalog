require_relative './album_data'
require_relative './genre_data'
require_relative './book_data'
require_relative './lable_data'
require_relative './author_data'
require_relative './game_data'

def load_data(album, genre, book, label, author, game)
  album_data(album)
  genre_data(genre)
  book_data(book)
  label_data(label)
  author_data(author)
  game_data(game)
end
