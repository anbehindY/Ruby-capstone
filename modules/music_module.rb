require_relative "../classes/musicalbum"
require_relative "../classes/genre"
require "date"

module MusicModule
  def add_music
    #(publish_date, )
    print "Enter Music Album publish date: "
    publish_date = gets.chomp
    print "Enter [y/n] Is it on spotify: "
    on_spotify = gets.chomp
    @musicalbums << MusicAlbum.new(publish_date, on_spotify, archived: false)
    save_musics
    print "Enter Genre Author Name: "
    name = gets.chomp
    @genres << Genre.new(name)
    puts "Music Album added successfully with genre"
    save_genres
  end

  def list_musics
    if @musicalbums.empty?
      puts "No Music Album found"
    else
      puts "List of Music Album"
    end
    @musicalbums.each_with_index do |musicalbum, index|
      print "\n #{index + 1}) Game published Date: #{musicalbum.publish_date}, "
      print "It is on spotify :#{musicalbum.on_spotify}"
    end
  end
end
