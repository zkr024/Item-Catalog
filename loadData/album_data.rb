require 'json'
require_relative '../items/music_album'
require_relative '../items/genre'

def album_data(album)
  File.write('./data/album.json', JSON.pretty_generate([])) unless File.exist?('./data/album.json')
  @file_album = File.read('./data/album.json')
  return if @file_album.empty?

  data_album = JSON.parse(@file_album)
  data_album.map do |value|
    type = value['Genre']
    date = value['Published_on']
    new_genre = Genre.new(type)
    album_info = MusicAlbum.new(date)
    album_info.genre = new_genre
    album << album_info
  end
end
