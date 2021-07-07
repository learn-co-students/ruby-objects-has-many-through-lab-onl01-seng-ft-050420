class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end
  
  def songs
    return Song.all.select {|x| x.artist == self}
  end
  
  def genres
    artist_genres = []
    
    songs.each do |x|
      artist_genres << x.genre
    end
    
    return artist_genres
  end
end