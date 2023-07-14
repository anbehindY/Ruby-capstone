require_relative '../classes/genre'
require 'date'

module GenreModule
  def list_genres
    if @genres.empty?
      puts 'No Genre found'
    else
      puts 'List of Genres'
    end
    @genres.each_with_index do |genre, i|
      puts "\n #{i + 1}) Genre Name:#{genre.name}"
    end
  end
end
