require_relative './item'

class Label
  attr_reader :id, :title, :color, :items

  def initialize(title, color)
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.add_label(self)
  end
end