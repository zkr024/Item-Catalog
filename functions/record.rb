class Record
  attr_accessor :book, :label, :author, :album, :genre, :game

  def initialize
    @book = []
    @label = []
    @author = []
    @album = []
    @genre = []
    @game = []
  end
end
