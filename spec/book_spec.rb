require_relative '../items/book'
require_relative '../items/label'
require_relative '../items/author'

describe Book do
  before :each do
    @label = Label.new('Narrative poem', 'black')
    @author = Author.new('Edgar', 'Poe')
    @book = Book.new('The Raven', '1845/1/29', 'blackbird designs', 'good', @author, @label)
  end

  describe '#new' do
    it 'Returns a new Book object' do
      expect(@book).to be_an_instance_of Book
    end

    it 'Throws an error when no arguments are given' do
      expect { Book.new }.to raise_exception ArgumentError
    end

    it 'Shows an true since it was published more than 10 years ago' do
      expect(@book.move_to_archived).to be true
    end

    it 'Shows true when the cover state is bad' do
      book_two = Book.new('The Raven', '2015/1/29', 'blackbird designs', 'bad', @author, @label)
      expect(book_two.move_to_archived).to be true
    end

    it 'Shows false when the albun is over 10 years published and has a good cover status' do
      expect(@book.move_to_archived).to be true
    end
  end
end
