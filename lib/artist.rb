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
    self.songs<<song
    song.artist=self
    @@all+=1
  end
end
