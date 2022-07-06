require './loadData/load_data'
require './menu/open_message'
require './menu/menu'
require './functions/record'
require './functions/create_author'
require './functions/create_book'
require './functions/create_label'
require './functions/book_list'
require './functions/label_list'
require './functions/author_list'
require './functions/album_list'
require './functions/genre_list'
require './functions/game_list'
require './functions/add_album'
require './functions/add_game'
require './saveData/save_data'


def app
  record = Record.new
  load_data(record.album, record.genre, record.book, record.label, record.author, record.game)
  open_message

  loop do
    load_menu
    if valid_input?(@input)
      case @input
      when '1' then BookList.new.book_list(record.book)
      when '2' then AlbumList.new.album_list(record.album)
      when '3' then GameList.new.game_list(record.game)  
      when '4' then GenreList.new.genre_list(record.genre)
      when '5' then LabelList.new.label_list(record.label)
      when '6' then AuthorList.new.author_list(record.author)  
      when '7' then CreateBook.new.create_book(record.book, record.label, record.author)
      when '8' then AddAlbum.new.add_album(record.album, record.genre)
      when '9' then AddGame.new.add_game(record.game, record.author)
      when '0'
        save_data(record.album, record.genre, record.book, record.label, record.author, record.game)
        break
      end
    else
      puts "option #{@input} is invalid, please try again"
    end
  end
end
