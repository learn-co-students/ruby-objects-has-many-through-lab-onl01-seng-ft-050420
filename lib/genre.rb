class Genre
  attr_accessor
  @@all = []
  
  def initialize()
    
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Songs.all.select {|song| song.genre == self}
  end
  
  def artists
    songs.all.map {|song| song.artist}
  end
  
end 