require_relative "app"

def your_option(option)
  case option
  when "1"
    APP.list_books
  when "2"
    puts "list_musicalbums"
  when "3"
    APP.list_games
  when "4"
    puts "list_genres"
  when "5"
    APP.list_labels
  when "6"
    APP.list_authors
  when "7"
    APP.add_book
  when "8"
    puts "add_musicalbum"
  when "9"
    APP.add_game
  when "10"
    puts "Thanks for using our Application!"
    exit
  end
end

def start_app(message)
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
    if ("1".."10").include? order
      your_option(order)
    else
      puts "\nInvalid input. please try again!"
    end
  end
end

APP = App.new
start_app("Welcome to Catalog of my things")
