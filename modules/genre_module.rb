require_relative '../classes/genre'
require 'date'

module GenreModule
    def list_all_genres
        genres = Genre.all
        if genres.empty?
        puts 'There are no Genres'
        else
        puts 'These are all the genres'
        genres.each_with_index do |genre, index|
            puts "#{index + 1}. #{genre.name}, ID:#{genre.id}"
        end
        end
    end

    def create_genre
        puts # blank
        puts 'Please create a Genre with the details below: '
        print 'Genre name: '
        genre_name = gets.chomp
        @create_genre = Genre.new(genre_name)
        puts 'Genre added successfully!'
      end

end