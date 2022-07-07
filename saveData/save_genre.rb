require 'json'

def save_genre(genre)
  genre_data = []
  genre.map do |val|
    info = {}
    info['Name'] = val[:Name]
    genre_data << info
  end
  File.write('./data/genre.json', JSON.pretty_generate(genre_data))
end
