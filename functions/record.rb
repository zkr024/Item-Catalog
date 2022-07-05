class Record
  attr_accessor :book, :label, :author, :album, :genre

  def initialize
    @book = []
    @label = []
    @author = []
    @album = []
    @genre = []
  end
end
