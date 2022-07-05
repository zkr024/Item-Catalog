require_relative './save_album'
require_relative './save_genre'

def save_data(album, genre)
  save_album(album)
  save_genre(genre)
  puts 'Thank you for using the app!'
end
