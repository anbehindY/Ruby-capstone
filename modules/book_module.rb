require_relative '../classes/book'
require_relative '../classes/label'

module BookModule
  def add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'cover_state: '
    cover_state = gets.chomp
    print 'publish_date: '
    publish_date = gets.chomp
    @books << Book.new(publish_date, publisher, cover_state, archived: false)
    save_books
    print 'Label: '
    title = gets.chomp
    print 'Color: '
    color = gets.chomp
    @labels << Label.new(title, color)
    puts 'Book added successfully with labels'
    save_labels
  end

  def list_books
    puts 'No books found' if @books.empty?
    @books.each_with_index do |book, index|
      puts "#{index + 1})Book published by #{book.publisher} in #{book.publish_date} with #{book.cover_state} cover"
    end
  end
end
