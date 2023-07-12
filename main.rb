require_relative 'app'

def your_option(option)
  if option == '10'
    puts 'Thanks for using our Application!'
    exit
  end
  menu_options = {
    '1' => APP.list_books,
    '3' => APP.list_games,
    '5' => APP.list_labels,
    '7' => APP.add_book,
    '6' => APP.list_authors,
    '9' => APP.add_game
  }
  menu_options[option] if menu_options.key?(option)
end

def getlist
  {
    '1' => '- List all books',
    '2' => '- List all music albums',
    '3' => '- List of games',
    '4' => '- List all genres',
    '5' => '- List all labels',
    '6' => '- List all authors',
    '7' => '- Add a book',
    '8' => '- Add a music album',
    '9' => '- Add a game',
    '10' => '- Exit'
  }
end

def start_app(message)
  puts message
  lists = getlist
  order = '10'
  loop do
    puts "\nPlease choose an options by entering a number\n"
    lists.each { |key, value| puts "#{key} #{value}" }
    order = gets.chomp
    if ('1'..'10').include? order
      your_option(order)
    else
      puts "\nInvalid input. please try again!"
    end
  end
end

APP = App.new
start_app('Welcome to Catalog of my things')
