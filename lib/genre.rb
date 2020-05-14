require 'pry'

class Genre
  attr_accessor :name, :genre 
  attr_reader :song
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end
  
  #How one class talks to another
  def artists
    songs.map {|song| song.artist}
  end
  
end 