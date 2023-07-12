require_relative "../classes/game"
require_relative "../classes/author"

module GameModule
  def add_game
    print "Publisher: "
    publisher = gets.chomp
    print "cover_state: "
    cover_state = gets.chomp
    print "published_date: "
    published_date = gets.chomp
    @books << Book.new(published_date, publisher, cover_state, archived: false)
    print "Label: "
    title = gets.chomp
    print "Color: "
    color = gets.chomp
    @labels << Label.new(title, color)
    puts "Book added successfully with labels"
  end

  def list_games
    puts "No books found" if @books.empty?
    @books.each_with_index do |book, index|
      puts "#{index + 1})Book published by #{book.publisher} in #{book.published_date} with #{book.cover_state} cover"
    end
  end
end