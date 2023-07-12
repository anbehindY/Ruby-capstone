require_relative "item"

class Author
  attr_reader :first_name, :last_name, :items

  def initialize(first_name, last_name)
    @id = Random.rand(1..1000)
    @first_name = first_name
    @last_name = last_name
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
    item.author = self
  end
end
