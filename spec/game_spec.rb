require_relative '../items/game'
require_relative '../items/author'

describe Game do
  before :each do
    @author = Author.new('Edgar', 'Poe')
    @game = Game.new('yes', '2017/1/29')
  end

  describe '#new' do
    it 'Returns a new Game object' do
      expect(@game).to be_an_instance_of Game
    end

    it 'Throws an error when no arguments are given' do
      expect { Game.new }.to raise_exception ArgumentError
    end

    it 'Shows an true since it was played at more than 2 years ago' do
      expect(@game.move_to_archived).to be true
    end

    it 'It assigns an author to the game' do
      @game.add_author('Edgar')
      expect(@game.author).to eq('Edgar')
    end
  end
end
