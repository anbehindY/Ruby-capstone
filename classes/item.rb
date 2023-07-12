class Item
  attr_accessor :id, :genre, :author, :published_date, :archived

  def initialize(published_date, archived: false)
    @id = Random.rand(1..1000)
    @published_date = published_date
    @archived = archived
  end

  def move_to_archived
    @archived = true if can_be_archive?
  end

  def label=(label)
    @label = label
    label.add_item(self)
  end

  private

  def can_be_archive?
    published_date > 10.years.ago
  end
end
