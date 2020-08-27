
class Song

    attr_accessor :name, :artist #this creates the belongs to relationship with Artist class
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        #possible refactor here... just seems a lil messy
        if artist == nil
            return nil
        else
            self.artist.name
        end 
    end

end
