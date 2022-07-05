require_relative 'item'
require 'date'

class Book < Item
  attr_accessor :publish_date, :publisher, :cover_state, :title

  def initialize(title, publish_date)
    super(title, publish_date, archived: false)
    @publish_date = DateTime.parse(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    return true if super || cover_state == 'bad'

    false
  end
end
