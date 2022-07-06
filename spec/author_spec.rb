require_relative '../items/author'
require_relative '../items/book'
require_relative '../items/label'

describe Author do
  before :each do
    @author = Author.new('Edgar', 'Poe')
    @label = Label.new('Narrative poem', 'black')
    @book = Book.new('The Raven', '1845/1/29', 'blackbird designs', 'good', @author, @label)
  end

  describe '#new' do
    it 'Returns a new Author object' do
      expect(@author).to be_an_instance_of Author
    end

    it 'Throws an error when less than 2 arguments are given' do
      expect { Author.new('Edgar') }.to raise_exception ArgumentError
    end

    it 'Shows an empty array when no authors were added' do
      expect(@author.items).to be_empty
    end

    it 'Adds a new author to the items array' do
      @author.add_item(@book)
      count = @author.items.count.to_i
      expect(count).to be >= 1
    end
  end
end
