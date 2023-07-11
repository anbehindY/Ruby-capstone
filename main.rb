require_relative("app")
require_relative("userinput")

def youroption(option)
  case option
  when "1"
    list_books
  when "2"
    list_musicalbums
  when "3"
    list_games
  when "4"
    list_genres
  when "5"
    list_labels
  when "6"
    list_author
  when "7"
    add_book
  when "8"
    add_musicalbum
  when "9"
    add_game
  when "10"
    puts "Thanks for using our Application!"
    exit
  end
end

def startapp(message)
  puts message

  loop do
    puts "\nPlease choose an options by entering a number"
    puts "\n1 - List all books"
    puts "2 - List all music albums"
    puts "3 - List of games"
    puts "4 - List all genres"
    puts "5 - List all labels"
    puts "6 - List all authors"
    puts "7 - Add a book"
    puts "8 - Add a music album"
    puts "9 - Add a game"
    puts "10 - Exit"
    order = gets.chomp
    youroption(order)
  end
end

startapp("We come to Catelog of my things")
