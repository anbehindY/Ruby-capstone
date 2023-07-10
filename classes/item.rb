class Item
  attr_reader :genre, :author, :source, :label

  def initialize(published_date, archived: false)
    @id = Random.rand(1..1000)
    @published_date = published_date
    @archived = archived
  end

  def genre=(genre)
    @genre = genre

  end

  def author=(author)
    @author = author
  end

  def source=(source)
    @source = source
  end

  def label=(label)
    @label = label
  end
end