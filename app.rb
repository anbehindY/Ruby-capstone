require_relative 'modules/book_module'

class App
  include BookModule

  def initialize
    @books = []
  end
end
