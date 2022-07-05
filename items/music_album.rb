require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(publish_date, on_spotify: true)
    super(publish_date)
    @on_spotify = on_spotify
    @publish_date = publish_date
  end

  private

  def can_be_archived?
    music = Item.new(@publish_date).move_to_archived
    music && @on_spotify
  end
end
