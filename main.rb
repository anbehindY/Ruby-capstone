require_relative 'app'

def list_options
  puts "\nPlease choose an option by entering a number"
  puts "\n1 - List all books"
  puts '2 - List all music albums'
  puts '3 - List of games'
  puts '4 - List all genres'
  puts '5 - List all labels'
  puts '6 - List all authors'
  puts '8 - Add a book'
  puts '9 - Add a music album'
  puts '10 - Add a game'
  puts '11 - Exit'
end

def your_option(app, option)
  case option
  when '1'
    app.list_books
  when '2'
    app.list_all_albums
  when '4'
    app.list_all_genres
  when '8'
    app.add_book
  when '9'
    app.add_an_album
  end
end

def start_app(message)
  app = App.new
  puts message

  loop do
    list_options
    order = gets.chomp
    if order == '11'
      app.save_data
      break
    end
    your_option(app, order)
  end
end

start_app('Welcome to Catalog of my things')
