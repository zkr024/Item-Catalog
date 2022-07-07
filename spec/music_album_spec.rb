require_relative '../items/music_album'

describe MusicAlbum do
  before :each do
    @album = MusicAlbum.new('2020/06/29')
  end

  describe '#new' do
    it 'Returns a new MusicAlbum object' do
      expect(@album).to be_an_instance_of MusicAlbum
    end

    it 'Throws an error when no arguments are given' do
      expect { MusicAlbum.new }.to raise_exception ArgumentError
    end

    it 'Shows an false since it was published less than 10 years ago' do
      expect(@album.move_to_archived).to be false
    end

    it 'Shows false when the album is is not in spotify' do
      album_two = MusicAlbum.new('1995/06/29')
      album_two.on_spotify = false
      expect(album_two.move_to_archived).to be false
    end

    it 'Shows true when the albun is over 10 years published and is on spotify' do
      album_three = MusicAlbum.new('1990/06/29')
      expect(album_three.move_to_archived).to be true
    end
  end
end
