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
  
  def new_song(name)
    song = Song.new(name)
    song.artist = self
    song
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    songs.select {|song| song.genre}
  end 
  
end