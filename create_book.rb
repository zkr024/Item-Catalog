require_relative 'book'
require_relative 'create_author'

class CreateBook
  def initialize
    @create_author = CreateAuthor.new
  end
end
