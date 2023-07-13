require_relative '../classes/musicAlbum'
require_relative '../classes/genre'
require 'date'

module MusicModule
    def take_album_details
        # puts 'Please add a Music Album with details below: '
        # item_property_selection
        # print 'Music Album Source: '
        # @m_source = gets.chomp
        print 'Is the Music Album on Spotify? (Y/N): '
        on_spotify = gets.chomp
        print 'Publish date(YYYY-MM-DD): '
        publish_date = gets.chomp
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
        MusicAlbum.new(on_spotify, publish_date)
        puts 'Music Album added sucessfully!'
    end

    def validate_date
        @p_date = gets.chomp
        begin
        Date.parse(@p_date)
        rescue Date::Error
        puts 'Invalid date format. Please enter the date in the format YYYY-MM-DD.'
        nil
        end
    end
    
    def validate_boolean
        bool = gets.chomp.upcase
        @onspot = nil
        unless %w[Y N].include?(bool)
        puts 'Please enter a valid option'
        bool = gets.chomp.upcase
        end
        @onspot = bool == 'Y'
    end
    
    

    def item_property_selection
        create_genre
    end

    
end