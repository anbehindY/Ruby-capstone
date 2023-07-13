require_relative 'item'

# MusicAlbum.
class MusicAlbum < Item
  attr_accessor :on_spotify

  @music_albums = []
  def initialize(on_spotify, publish_date)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify == true
  end

end