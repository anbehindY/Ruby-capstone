require_relative "item"

class Genre
  attr_reader :name, :items

  def initialize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def getid
    @id
  end

  def setid
    @id
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.genre = self
  end
end
