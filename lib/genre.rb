class Genre
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


    def self.destroy_all
        @@all = []
    end

    def self.create(name)
        genre = Genre.new(name)
        self.all << genre
        genre
    end

    def save
        self.class.all << self
    end 


end