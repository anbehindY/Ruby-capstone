require_relative 'item'

class Book < Item
  attr_reader :publisher, :cover_state

  def initialize(published_date, publisher, cover_state, archived: false)
    super(published_date, archived: archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archive?
    super || @cover_state == 'bad'
  end
end
