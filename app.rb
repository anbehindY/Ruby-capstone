require_relative "modules/book_module"
require_relative "modules/label_module"
require_relative "modules/game_module"
require_relative "modules/author_module"
require_relative "modules/save_module"
require_relative "modules/load_module"
require "json"

class App
  include BookModule
  include LabelModule
  include GameModuleModule
  include AuthorModule
  include SaveModule
  include LoadModule

  def initialize
    @books = load_books
    @labels = load_labels
    @games = load_games
    @authors = load_authors
  end

  def save_data
    save_books
    save_labels
  end
end
