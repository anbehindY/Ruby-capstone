require_relative 'modules/book_module'
require_relative 'modules/save_module'
require_relative 'modules/load_module'
require 'json'

class App
  include BookModule
  include LabelModule
  include SaveModule
  include LoadModule

  def initialize
    @books = load_books
    @labels = load_labels
  end

  def save_data
    save_books
  end
end
