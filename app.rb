require_relative 'modules/book_module'
require_relative 'modules/label_module'
require_relative 'modules/game_module'
require_relative 'modules/author_module'
require_relative 'modules/save_module'
require_relative 'modules/load_module'
require_relative 'modules/music_module'
require_relative 'modules/genre_module'
require 'json'

class App
  def initialize
    @books = load_books
    @labels = load_labels
    @games = load_games
    @authors = load_authors
    @musicalbums = load_musics
    @genres = load_genres
  end
  include BookModule
  include LabelModule
  include AuthorModule
  include GameModule
  include MusicModule
  include GenreModule
  include SaveModule
  include LoadModule
end
