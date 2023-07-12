require_relative '../classes/book'

module BookModule
  def add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'cover_state: '
    cover_state = gets.chomp
    print 'published_date: '
    published_date = gets.chomp
    @books << Book.new(published_date, publisher, cover_state, archived: false)
    puts 'Book added successfully'
  end

  def list_books
    puts 'No books found' if @books.empty?
    @books.each_with_index do |book, index|
      puts "#{index + 1})Book published by #{book.publisher} in #{book.published_date} with #{book.cover_state} cover"
    end
  end
end
