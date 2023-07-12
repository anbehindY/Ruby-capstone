module LoadModule
  def fetch_data(filename)
    if File.exist?("./data/#{filename}.json")
      File.read("./data/#{filename}.json")
    else
      File.write("./data/#{filename}.json", JSON.pretty_generate([]))
    end
  end

  def load_books
    books = JSON.parse(fetch_data('books'))
    loaded_books = []
    books.each do |book|
      loaded_books << Book.new(book['published_date'], book['publisher'], book['cover_state'])
    end
    loaded_books
  end

  def load_labels
    labels = JSON.parse(fetch_data('labels'))
    loaded_labels = []
    labels.each do |label|
      loaded_labels << Label.new(label['title'], label['color'])
    end
    loaded_labels
  end
end
