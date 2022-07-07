require_relative '../items/game'
require_relative '../items/author'
require_relative '../menu/menu'
require_relative './get_date/'

class AddGame
  def add_game(game, author)
    print 'Is the game multiplayer [Y/N]'
    @multiplayer = gets.chomp
    loop do
      break if @multiplayer.capitalize == 'N' || @multiplayer.capitalize == 'Y'

      puts "#{@multiplayer} is not a valid entry, try again"
      @multiplayer = gets.chomp
    end

    puts 'Games Author information: '
    print 'First name: '
    first_name = gets.chomp
    print 'Last name: '
    last_name = gets.chomp

    new_author = Author.new(first_name, last_name)

    puts 'When was the last time you played this game?'
    date

    new_game = Game.new(@multiplayer, @date)

    game << new_game unless game.include?(new_game)
    author << new_author unless author.include?(new_author)
    puts 'Game was created successfully'
  end
end
