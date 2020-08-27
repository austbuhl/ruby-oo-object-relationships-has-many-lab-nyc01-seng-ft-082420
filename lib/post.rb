#post will belong to an author

class Post

    attr_accessor :title, :author #<--- creating the belongs to with Author
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if author == nil
            return nil
        else
            self.author.name
        end
    end
end
