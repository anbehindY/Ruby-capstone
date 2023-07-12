def list_musicalbums
end

def add_musicalbum
  publish_date = setanyinput("Enter date of Music Album published?(YYYY-MM-DD): ")
  on_spotify = setgiveninput("Music Album is on spotify [Y, N]: ", ["y", "n", "yes", "no"])
  name = setanyinput("Enter Music Album genre (e.g 'Comedy', 'Thriller'): ")
  musicalbum = MusicAlbum.new(publish_date, on_spotify)
  genre = Genre.new(name)
  item = Item.new(publish_date)
  genre.add_item(item)
  APP.create_musicalbum(musicalbum, genre)
end
