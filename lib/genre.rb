class Genre
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def songs
    return Song.all.select {|x| x.genre == self}
  end
  
  def artists
    genre_artists = []
    
    songs.each do |x|
      genre_artists << x.artist
    end
    
    return genre_artists
  end

end