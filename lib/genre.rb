require 'pry'
class Genre
    attr_accessor :name, :song, :artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        self.songs.map do |song|
            # binding.pry
            song.artist
        end
    end





    def self.all
        @@all
    end
end