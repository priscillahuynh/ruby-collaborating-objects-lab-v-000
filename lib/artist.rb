class Artist
  attr_accessor :name
  @@all=0

  def initialize(name)
    @name=name
    @songs=[]
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs<<song
    song.artist=self
    song
  end

  def save
    @@all<<self
  end

  def self.all?
    @@all
  end
end
