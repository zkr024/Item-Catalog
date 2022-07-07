require_relative '../items/genre'
require_relative '../items/music_album'

describe Genre do
  before :each do
    @genre = Genre.new('Power metal')
  end

  describe '#new' do
    it 'Returns a new Genre object' do
      expect(@genre).to be_an_instance_of Genre
    end

    it 'Throws an error when no arguments are given' do
      expect { Genre.new }.to raise_exception ArgumentError
    end

    it 'Shows an empty array when no genres were added' do
      expect(@genre.items).to be_empty
    end

    it 'Adds a new genre to the items array' do
      album = MusicAlbum.new('2022/06/29')
      @genre.add_item(album)
      count = @genre.items.count.to_i
      expect(count).to be >= 1
    end
  end
end
