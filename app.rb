require './menu/open_message'
require './menu/menu'
require './functions/record'
require './functions/create_author'
require './functions/create_book'
require './functions/create_label'
require './functions/book_list'
require './functions/label_list'
require './loadData/load_data'
require './functions/album_list'
require './functions/genre_list'
require './functions/add_album'
require './saveData/save_data'


def app
  record = Record.new
  load_data(record.album, record.genre)
  open_message

  loop do
    load_menu
    if valid_input?(@input)
      case @input
      when '1' then BookList.new.book_list(record.book)
      when '2' then AlbumList.new.album_list(record.album)
      when '3' then GenreList.new.genre_list(record.genre)
      when '4' then LabelList.new.label_list(record.label)
      when '5' then CreateBook.new.create_book(record.book, record.label, record.author)
      when '6' then AddAlbum.new.add_album(record.album, record.genre)
      when '7'
        save_data(record.album, record.genre)
        break
      end
    else
      puts "option #{@input} is invalid, please try again"
    end
  end
end
