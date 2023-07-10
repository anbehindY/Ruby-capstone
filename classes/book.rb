require_relative 'item'

class Book < Item
  def initialize(publisher, cover_state)
    super(published_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archive?
    super || @cover_state == 'bad'
  end
end
