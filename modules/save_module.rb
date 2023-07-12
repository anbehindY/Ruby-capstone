module SaveModule
  def save_data(filename, data)
    unless Dir.exist?("data")
      puts Dir.mkdir("data")
    end
    File.write("data/#{filename}.json", JSON.pretty_generate(data))
  end

  def save_books
    saved_books = []
    @books.each do |book|
      saved_books << { published_date: book.published_date, publisher: book.publisher,
                       cover_state: book.cover_state }
    end
    save_data("books", save_books)
  end

  def save_labels
    saved_labels = []
    @labels.each do |label|
      saved_labels << { title: label.title, color: label.color }
    end
    save_data("labels", saved_labels)
  end

  def save_games
    saved_games = []
    @games.each do |game|
      saved_games << { last_played_at: game.last_played_at, multiplayer: game.multiplayer,
                       publish_date: game.publish_date }
    end
    save_data("games", saved_games)
  end

  def save_authors
    saved_authors = []
    @authors.each do |author|
      saved_authors << { first_name: author.first_name, last_name: author.last_name }
    end
    save_data("authors", saved_authors)
  end
end
