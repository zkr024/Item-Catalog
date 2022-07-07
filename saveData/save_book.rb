require 'json'

def save_book(book)
  book_info = []
  book.map do |val|
    info = {}
    info['Title'] = val.title
    info['Published'] = val.publish_date
    info['Publisher'] = val.publisher
    info['Status'] = val.cover_state
    info['Author_First_Name'] = val.author.first_name
    info['Author_Last_Name'] = val.author.last_name
    info['Type'] = val.label.title
    info['Color'] = val.label.color
    book_info << info
  end
  File.write('./data/book.json', JSON.pretty_generate(book_info))
end
