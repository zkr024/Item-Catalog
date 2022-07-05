require './menu/open_message'
require './menu/menu'
require './functions/record'
require './functions/create_author'
require './functions/create_book'
require './functions/create_label'

def app
  record = Record.new
  open_message

  loop do
    load_menu
    if valid_input?(@input)
      case @input
      when '1' then puts 'test 1'
      when '2' then puts 'test 1'
      when '3' then puts 'test 1'
      when '4' then puts 'test 4'
      when '5' then CreateBook.new.create_book(record.book, record.label, record.author)
      when '6' then puts 'test 1'
      when '7'
        break
      end
    else
      puts "option #{@input} is invalid, please try again"
    end
  end
end
