require_relative '../classes/musicAlbum'
require_relative '../classes/genre'
require 'date'

module MusicModule
    def take_album_details
        puts 'Please add a Music Album with details below: '
        item_property_selection
        print 'Is the Music Album on Spotify? (Y/N): '
        on_spotify = validate_boolean
        print 'Publish date(YYYY-MM-DD): '
        publish_date = validate_date
    end

    def list_all_albums
        albums = MusicAlbum.all
        if albums.empty?
        puts 'There are no Music Albums added'
        else
        puts 'These are all the Music Albums'
        albums.each_with_index do |album, index|
            puts "#{index + 1}. Album ID:#{album.id} by #{album.author.first_name} #{album.author.last_name},
            On Spotify? #{album.on_spotify}"
        end
        end
    end

    def add_an_album
        take_album_details
        @album << MusicAlbum.new(publish_date: publish_date, on_spotify: on_spotify)
        puts 'Music Album added sucessfully!'
    end

    def validate_date
        @p_date = gets.chomp
        # begin
        # Date.parse(@p_date)
        # rescue Date::Error
        # puts 'Invalid date format. Please enter the date in the format YYYY-MM-DD.'
        # nil
        # end
    end
    
    def validate_boolean
        bool = gets.chomp.upcase
        if bool == 'Y'
            @onspot = true 
        else
            @onspot = false
        end
    end

    def item_property_selection
        create_genre
    end
end
