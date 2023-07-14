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
      loaded_books << Book.new(book['publish_date'], book['publisher'], book['cover_state'])
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

  def load_games
    games = JSON.parse(fetch_data('games'))
    loaded_games = []
    games.each do |game|
      loaded_games << Game.new(game['last_played_at'], game['multiplayer'], game['publish_date'])
    end
    loaded_games
  end

  def load_authors
    authors = JSON.parse(fetch_data('authors'))
    loaded_authors = []
    authors.each do |author|
      loaded_authors << Author.new(author['first_name'], author['last_name'])
    end
    loaded_authors
  end

  def load_musics
    musics = JSON.parse(fetch_data('musicalbums'))
    loaded_musics = []
    musics.each do |music|
      # (publish_date, on_spotify)
      loaded_musics << MusicAlbum.new(music['publish_date'], music['on_spotify'])
    end
    loaded_musics
  end

  def load_genres
    genres = JSON.parse(fetch_data('genres'))
    loaded_genres = []
    genres.each do |genre|
      loaded_genres << Genre.new(genre['name'])
    end
    loaded_genres
  end
end
