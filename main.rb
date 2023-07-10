def youroption(option)
  puts option
end

def startapp(message)
  puts message

  loop do
    puts "\nPlease choose an options by entering a number"
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

    order = gets.chomp
    break if order == '11'

    youroption(order)
  end
end

startapp('We come to Catelog of my things')
