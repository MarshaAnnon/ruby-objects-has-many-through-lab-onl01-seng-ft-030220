require "pry"

class Song

  attr_accessor :song
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
