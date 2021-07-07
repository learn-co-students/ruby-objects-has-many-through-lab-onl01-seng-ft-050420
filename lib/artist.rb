class Artist
  attr_accessor :name, :artist, :genre
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(song, genre)
    Song.new(song, self, genre)
  end
  
  def songs
    Song.all.select do |s|
      s.artist == self
    end
  end  
  
  def genres
    Song.all.map do |g|
      g.genre
    end
  end
  
  def self.all
    @@all
  end
end  