require_relative 'modules/book_module'
require_relative 'modules/save_module'
require_relative 'modules/load_module'
require_relative 'modules/music_module'
require 'json'

class App
  include BookModule
  include SaveModule
  include LoadModule
  include MusicModule

  def initialize
    @books = load_books
    @album = load_album
  end

  def save_data
    save_books
    album_saves
  end
end
