require_relative 'item'
require 'date'

class Book < Item
  attr_accessor :publish_date, :title

  def initialize(title, publish_date)
    super(title, publish_date, archived: false)
    @publish_date = DateTime.parse(publish_date)
  end

  def can_be_archived?
    return true if super

    false
  end
end
