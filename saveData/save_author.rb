require 'json'

def save_author(author)
  author_data = []
  author.map do |val|
    info = {}
    info['First_Name'] = val.first_name
    info['Last_Name'] = val.last_name
    author_data << info
  end
  File.write('./data/author.json', JSON.pretty_generate(author_data))
end
