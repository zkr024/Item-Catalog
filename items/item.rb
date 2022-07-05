require 'date'
require 'securerandom'

class Item
  attr_reader :id, :archived, :genre, :author
  attr_accessor :source, :label, :publish_date

  def initialize(publish_date, archived: false)
    @id = SecureRandom.uuid
    @publish_date = publish_date
    @archived = archived
  end

  def add_author(author_name)
    @author = author_name
  end

  def add_label(label)
    @label = label
  end

  def move_to_archived
    @archived = can_be_archived?
  end

  def genre=(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  private

  def can_be_archived?
    now = DateTime.now.year
    now - @publish_date.to_i > 10
  end
end
