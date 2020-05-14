class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @all
  end
  
  def new_song(name, genre)
    song = Song.new(name, genre)
    song.artist = self
    song
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  #How one class talks to another
  def genres
    songs.map {|song| song.genre}
  end 
  
end