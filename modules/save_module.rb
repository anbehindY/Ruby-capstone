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

def album_saves
  albums = MusicAlbum.all
  File.write('data/albums.json', JSON.dump(albums.map do |album|
                                        { id: album.id, on_spotify: album.on_spotify,
                                          genre: { id: album.genre.id, name: album.genre.name },
                                          author: { id: album.author.id, first_name: album.author.first_name,
                                                    last_name: album.author.last_name }, source: album.source, label:
                                         { id: album.label.id, title: album.label.title, colour: album.label.colour },
                                          publish_date: album.publish_date.to_s }
                                      end))
end