require 'date'
require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(_multiplayer, last_played_at)
    super(publish_date)
    @multiplayer = last_played_at
    @last_played_at = last_played_at
  end

  private

  def can_be_archived?
    now = DateTime.now.year
    game = Item.new(@publish_date).move_to_archived
    game && now - @last_played_at.to_i > 2
  end
end
