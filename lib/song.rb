class Song

    attr_accessor :name, :song

    def initialize(name)
        @name = name
        @song = song
        @@all = []
    end

    def name
        @name
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all = []
    end

    def save
        self.class.all << self
    end

    def self.create(name)
        song = Song.new(name)
        self.all << song
        song
    end

    def create_from_filename

    end

    
end