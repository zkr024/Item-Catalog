require_relative '../items/item'
require_relative '../items/genre'

describe Item do
  before :each do
    @item = Item.new('2000/06/29')
    @genre = Genre.new('Power Metal')
  end

  describe '#new' do
    it 'Returns a new Item object' do
      expect(@item).to be_an_instance_of Item
    end

    it 'Throws an error when no arguments are given' do
      expect { Item.new }.to raise_exception ArgumentError
    end

    it 'Shows an true since it was published more than 10 years ago' do
      expect(@item.move_to_archived).to be true
    end

    it 'Shows false when the item is publihed less than 10 years ago' do
      item = Item.new('2018/06/29')
      expect(item.move_to_archived).to be false
    end

    it 'Can use the belongs to option with Genre' do
      @item.genre = @genre
      expect(@item.genre.name).to eq('Power Metal')
    end
  end
end
