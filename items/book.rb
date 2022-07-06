require_relative './item'
require_relative './label'
require 'date'

class Book < Item
  attr_accessor :publish_date, :publisher, :cover_state, :title

  def initialize(title, publish_date, publisher, cover_state, author, label)
    super(publish_date)
    @title = title
    @publish_date = publish_date
    @publisher = publisher
    @cover_state = cover_state
    add_author(author)
    @label = label
    add_label(label)
  end

  def can_be_archived?
    book = Item.new(@publish_date).move_to_archived
    book || @cover_state == 'bad'
  end
end
