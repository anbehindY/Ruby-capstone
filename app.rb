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
  include BookModule
  include LabelModule
  include SaveModule
  include LoadModule
  include MusicModule
  include GenreModule

  def initialize
    @books = load_books
    @labels = load_labels
    @album = load_album
    @games = load_games
    @authors = load_authors
  end
end
