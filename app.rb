require_relative 'modules/book_module'
require_relative 'modules/label_module'
require_relative 'modules/game_module'
require_relative 'modules/author_module'
require_relative 'modules/save_module'
require_relative 'modules/load_module'
require 'json'

class App
  def initialize
    @books = load_books
    @labels = load_labels
    @games = load_games
    @authors = load_authors
  end

  include BookModule
  include LabelModule
  include GameModule
  include AuthorModule
  include SaveModule
  include LoadModule
end
