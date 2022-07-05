require_relative 'item'

class Label
  attr_reader :id, :title, :color, :items

  def initialize(title, color, items = [])
    @id = Random.rand(1...50)
    @title = title
    @color = color
    @items = items
  end
end
