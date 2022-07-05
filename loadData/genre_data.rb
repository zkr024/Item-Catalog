require 'json'

def genre_data(genre)
  File.write('./data/genre.json', JSON.pretty_generate([])) unless File.exist?('./data/genre.json')
  @file_genre = File.read('./data/genre.json')
  return if @file_genre.empty?

  data_genre = JSON.parse(@file_genre)
  data_genre.map do |value|
    name = value['Name']
    new_type = { Name: name }
    genre << new_type unless genre.include?(new_type)
  end
end
