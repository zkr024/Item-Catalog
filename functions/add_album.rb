require_relative '../items/music_album'
require_relative '../items/genre'
require_relative './get_date/'

class AddAlbum
  def add_album(album, genre)
    print 'Album Genre: '
    type = gets.chomp.capitalize
    new_genre = Genre.new(type)
    new_type = { Name: type }
    date
    music = MusicAlbum.new(@date)
    music.genre = new_genre
    genre << new_type unless genre.include?(new_type)
    album << music
    puts 'Music album created successfully'
  end
end
