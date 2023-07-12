class Item
  attr_reader :genre, :author, :label, :archived, :publish_date

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  # Add this item to genre
  def add_genre(genre)
    @genre = genre
    # genre.items << self unless genre.items.include?(self)
  end

  # Add this item to author
  def add_author(author)
    @author = author
    # author.items << self unless author.items.include?(self)
  end

  # Add this item to label
  def add_label(label)
    @label = label
    # label.items << self unless label.items.include?(self)
  end

  def move_to_archived
    @archived = true if can_be_archive?
  end

  private

  def can_be_archive?
    @publish_date > 10.years.ago
  end
end
