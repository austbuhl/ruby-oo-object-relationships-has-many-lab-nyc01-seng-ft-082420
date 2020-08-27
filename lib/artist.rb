
# song BELONGS TO artist / artists HAVE MANY songs

class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    # method to find all the songs by the artist
    def songs
        Song.all.select {|song| song.artist == self}
    end

    # need method to associate new song with the artist
    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
    #could I just pass in song here or do I need to delineate between this method and #add_song ???
        new_song = Song.new(song_name)
        new_song.artist = self 
    end

    def self.song_count
        Song.all.count
    end

end
