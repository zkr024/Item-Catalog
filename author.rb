require_relative 'item'

class Author
  attr_accessor :first_name, :last_name, :items

  def initialize(first_name, last_name)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.add_author(self)
  end

  def to_hash
    { first_name: @first_name, last_name: @last_name }
  end
end
