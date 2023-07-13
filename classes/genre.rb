require_relative 'item'

# Genre class
class Genre
  attr_accessor :name, :items
  attr_reader :id

  @genres = []

  def initialize(name)
    @id = Random.rand(1...1000)
    @name = name
    @items = []
    self.class.all << self
  end

  def add_items(item)
    @items << item
    item.genre = self
  end

  def self.all
    @genres
  end
end