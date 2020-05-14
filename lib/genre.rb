class Genre
  attr_accessor
  @@all = []
  
  def initialize()
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Songs.all.select {|song| song.genre == self}
  end
  
  #How one class talks to another
  def artists
    songs.map {|song| song.artist}
  end
  
end 