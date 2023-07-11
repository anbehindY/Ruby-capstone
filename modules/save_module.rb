module SaveModule
  def save_books
    saved_books = []
    @books.each do |book|
      saved_books << { published_date: book.published_date, publisher: book.publisher,
                       cover_state: book.cover_state }
    end
    File.write('data/books.json', JSON.pretty_generate(saved_books))
  end
end
