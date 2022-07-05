require_relative './album_data'
require_relative './genre_data'

def load_data(album, genre)
  album_data(album)
  genre_data(genre)
end
