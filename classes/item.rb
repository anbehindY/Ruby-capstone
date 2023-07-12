class Item
  attr_accessor :genre, :author, :label, :archived, :publish_date, :items

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
    @items = []
  end
#setter and
  def getid
    @id
  end

  def setid
    @id
  end

  def move_to_archived
    @archived = true if can_be_archive?
  end

  private

  def can_be_archive?
    @publish_date > 10.years.ago
  end
end
