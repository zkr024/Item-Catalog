require_relative '../items/label'
require_relative '../items/author'
require_relative '../items/book'

describe Label do
  before :each do
    @label = Label.new('Narrative poem', 'black')
    @author = Author.new('Edgar', 'Poe')
    @book = Book.new('The Raven', '1845/1/29', 'blackbird designs', 'good', @author, @label)
  end

  describe '#new' do
    it 'Returns a new Label object' do
      expect(@label).to be_an_instance_of Label
    end

    it 'Throws an error when less than 2 arguments are given' do
      expect { Label.new('The Raven') }.to raise_exception ArgumentError
    end

    it 'Shows an empty array when no authors were added' do
      expect(@label.items).to be_empty
    end

    it 'Adds a new label to the items array' do
      @label.add_item(@book)
      count = @label.items.count.to_i
      expect(count).to be >= 1
    end
  end
end
