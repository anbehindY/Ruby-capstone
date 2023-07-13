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
end

def load_album
  return unless File.exist?('data/albums.json') && !File.empty?('data/albums.json')

  @album_data = JSON.parse(File.read('data/albums.json'))

  album_file_load
end

def album_file_load
  albums = @album_data.map do |album|
    genre = GenreConverter.new(album['genre']['id'], album['genre']['name'])
    author = AuthorConverter.new(album['author']['id'], album['author']['first_name'], album['author']['last_name'])
    label = LabelConverter.new(album['label']['id'], album['label']['title'], album['label']['colour'])
    publish_date = Date.parse(album['publish_date'])

    MusicAlbumConverter.new(id: album['id'], on_spotify: album['on_spotify'], genre: genre, author: author,
                            source: album['source'], label: label, publish_date: publish_date)
  end

  MusicAlbum.all = albums
end

def load_album
  return unless File.exist?('data/albums.json') && !File.empty?('data/albums.json')

  @album_data = JSON.parse(File.read('data/albums.json'))

  album_file_load
end

# def album_file_load
#   albums = @album_data.map do |album|
#     genre = GenreConverter.new(album['genre']['id'], album['genre']['name'])
#     author = AuthorConverter.new(album['author']['id'], album['author']['first_name'], album['author']['last_name'])
#     label = LabelConverter.new(album['label']['id'], album['label']['title'], album['label']['colour'])
#     publish_date = Date.parse(album['publish_date'])

#     MusicAlbumConverter.new(id: album['id'], on_spotify: album['on_spotify'], genre: genre, author: author,
#                             source: album['source'], label: label, publish_date: publish_date)
#   end

#   MusicAlbum.all = albums
end
