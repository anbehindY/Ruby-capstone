class Item
  attr_accessor :id, :genre, :label, :author, :publish_date, :archived

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archived
    @archived = true if can_be_archive?
  end

  private

  def can_be_archive?
    @publish_date > 10.years.ago
  end
end
