require 'json'

def save_album(album)
  album_data = []
  album.map do |val|
    info = {}
    info['Genre'] = val.genre.name
    info['Published_on'] = val.publish_date
    album_data << info
  end
  File.write('./data/album.json', JSON.pretty_generate(album_data))
end
