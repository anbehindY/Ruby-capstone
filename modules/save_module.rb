module SaveModule
  def save_file(filename, data)
    puts Dir.mkdir('data') unless Dir.exist?('data')
    File.write("data/#{filename}.json", JSON.pretty_generate(data))
  end

  def save_books
    books_data = []
    @books.each do |book|
      books_data << { publish_date: book.publish_date, publisher: book.publisher,
                      cover_state: book.cover_state }
    end
    save_file('books', books_data)
  end

  def save_labels
    labels_data = []
    @labels.each do |label|
      labels_data << { title: label.title, color: label.color }
    end
    save_file('labels', labels_data)
  end

  def save_games
    games_data = []
    @games.each do |game|
      games_data << { last_played_at: game.last_played_at, multiplayer: game.multiplayer,
                      publish_date: game.publish_date }
    end
    save_file('games', games_data)
  end

  def save_authors
    authors_data = []
    @authors.each do |author|
      authors_data << { first_name: author.first_name, last_name: author.last_name }
    end
    save_file('authors', authors_data)
  end

  def save_musics
    music_data = []
    @musicalbums.each do |musicalbum|
      music_data << { publish_date: musicalbum.publish_date, on_spotify: musicalbum.on_spotify }
    end
    save_file('musicalbums', music_data)
  end

  def save_genres
    genres_data = []
    @genres.each do |genre|
      genres_data << { name: genre.name }
    end
    save_file('genres', genres_data)
  end
end
