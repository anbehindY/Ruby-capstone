module SaveModule
  def save_books
    saved_books = []
    @books.each do |book|
      saved_books << { published_date: book.published_date, publisher: book.publisher,
                       cover_state: book.cover_state }
    end
    File.write('data/books.json', JSON.pretty_generate(saved_books))
  end

  def save_labels
    saved_labels = []
    @labels.each do |label|
      saved_labels << { title: label.title, color: label.color }
    end
    File.write('data/labels.json', JSON.pretty_generate(saved_labels))
  end
end
