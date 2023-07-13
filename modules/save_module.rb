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

  def save_genres
    saved_genres = []
    @genres.each do |genre|
      saved_genres << { name: genre.name }
    end
    File.write('data/genres.json', JSON.pretty_generate(saved_labels))
  end

  def save_genres
    saved_genres = []
    @genres.each do |genre|
      saved_genres << { name: genre.name }
    end
    File.write('data/genres.json', JSON.pretty_generate(saved_labels))
  end
  # def album_saves
  #   albums = MusicAlbum.all
  #   File.write('data/albums.json', JSON.dump(albums.map do |album|
  #                                         { id: album.id, on_spotify: album.on_spotify,
  #                                           genre: { id: album.genre.id, name: album.genre.name },
  #                                           author: { id: album.author.id, first_name: album.author.first_name,
  #                                                     last_name: album.author.last_name }, source: album.source, label:
  #                                         { id: album.label.id, title: album.label.title, colour: album.label.colour },
  #                                           publish_date: album.publish_date.to_s }
  #                                       end))
  # end
end
