require_relative "item"

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(last_played_at, multiplayer, publish_date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archive?
    return true if super && (@last_played_at > 2.years.ago)
    false
  end
end
