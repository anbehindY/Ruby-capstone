def list_games
  games = APP.games
  games.each_with_index do |game, i|
    puts "List of Games"
    puts "#{i + 1}) ID: #{game.getid} Last Played Date: #{game.last_played_at}, Publish Date: #{game.publish_date} Multiplayer: #{game.multiplayer}"
    print "Author First Name: #{game.author.first_name}  Author Last Name: #{game.author.last_name} "
  end
end

def add_game
  last_played_at = setanyinput("Enter last date game was played:  ")
  publish_date = setanyinput("Enter publish date of a game:  ")
  multiplayer = setgiveninput("Is the game played by multiplayer? (Y/N) ", ["y", "n", "yes", "no"])
  first_name = setanyinput("Enter Author first name: ")
  last_name = setanyinput("Enter Author last name: ")
  game = Game.new(last_played_at, multiplayer, publish_date)
  author = Author.new(first_name, last_name)
  game.author=author
  item = Item.new(publish_date)
  author.add_item(item)
  APP.create_game(game, author)
end
