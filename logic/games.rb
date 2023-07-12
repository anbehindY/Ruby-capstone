def list_games
end

def add_game
  last_played_at = setanyinput("Enter last date game was played:  ")
  publish_date = setanyinput("Enter publish date of a game:  ")
  multiplayer = setgiveninput("Is the game played by multiplayer? (Y/N) ", ["y", "n", "yes", "no"])
  first_name = setanyinput("Enter Author first name: ")
  last_name = setanyinput("Enter Author last name: ")
  game = Game.new(last_played_at, multiplayer, publish_date)
  author = Author.new(first_name, last_name)
  item = Item.new(publish_date)
  author.add_item(item)
  APP.create_game(musicalbum, genre)
end
