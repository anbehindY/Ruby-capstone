class App
  attr_reader :books, :authors, :games, :genres, :labels, :musicalbums

  def initialize
    @books = []
    @authors = []
    @musicalbums = []
    @games = []
    @genres = []
    @labels = []
  end

  def create_book(book, label)
    @books << book unless @books.include?(book)
    @labels << label unless @labels.include?(label)
  end

  def create_musicalbum(musicalbum, genre)
    @musicalbums << musicalbum unless @musicalbums.include?(musicalbum)
    @genres << genre unless @genres.include?(genre)
  end

  def create_game(game, author)
    @games << game unless @games.include?(game)
    @authors << author unless @authors.include?(author)
  end
end

def setgiveninput(message, lists)
  input = ""
  loop do
    print message
    input = gets.chomp.downcase.to_s
    if lists.include?(input)
      break
    else
      puts "Invalid input. Please try again!"
    end
  end
  return input
end

def setanyinput(message)
  input = ""
  loop do
    print message
    input = gets.chomp.to_s
    unless input.empty?
      break
    else
      puts "Invalid input. Please try again!"
    end
  end
  return input
end
