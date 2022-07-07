require 'json'
require_relative '../items/author'

def author_data(author)
  File.write('./data/author.json', JSON.pretty_generate([])) unless File.exist?('./data/author.json')
  @file_author = File.read('./data/author.json')
  return if @file_author.empty?

  data_author = JSON.parse(@file_author)
  data_author.map do |value|
    first_name = value['First_Name']
    last_name = value['Last_Name']
    author_info = Author.new(first_name, last_name)
    author << author_info
  end
end
