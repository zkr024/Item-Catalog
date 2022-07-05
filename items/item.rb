require 'date'
require_relative './label'
require 'securerandom'

class Item
  attr_reader :id, :archived
  attr_accessor :author, :genre, :source, :label, :publish_date

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

  private

  def can_be_archived?
    now = DateTime.now.year
    now - @publish_date.to_i > 10
  end
end
