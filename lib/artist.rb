class Artist
    attr_accessor :name 

    def initialize(name)
        @name = name
        @@all = []
    end

    def name
        @name
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def self.destroy_all
        @@all = []
    end

    def self.create(name)
        artist = Artist.new(name)
        self.all << artist
        artist
    end



end