class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs #i want this to access all the songs in the Songs class and return the ones associated with a particular aritst
    Song.all.select do |song|
      if song.artist == self
        true
      else
        false
      end
    end
   #check if this song's artist is my Self


  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    songs.collect do |song|
      song.genre
    end
  end

end
