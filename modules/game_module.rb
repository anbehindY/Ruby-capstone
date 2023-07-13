require_relative '../classes/game'
require_relative '../classes/author'

module GameModule
  def add_game
    print 'Enter  game publish date: '
    publish_date = gets.chomp
    print 'Enter game Last played Date: '
    last_played_at = gets.chomp
    print 'Enter is multiplayer?:[Y/N]'
    multiplayer = gets.chomp
    @games << Game.new(last_played_at, multiplayer, publish_date, archived: false)
    save_games
    print 'Enter  Author First Name: '
    first_name = gets.chomp
    print 'Enter Author Last Name: '
    last_name = gets.chomp
    @authors << Author.new(first_name, last_name)
    puts 'Game added successfully with author'
    save_authors
  end

  def list_games
    if @games.empty?
      puts 'No game found'
    else
      puts 'List of Games'
    end
    @games.each_with_index do |game, index|
      print "\n #{index + 1}) Game published Date: #{game.publish_date} "
      print "Game last played Date : #{game.last_played_at}, "
      print "Game is multiplayer :#{game.multiplayer}"
    end
  end
end
