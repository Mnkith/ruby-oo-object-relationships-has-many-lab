
class Song

  @@all = []
  attr_reader  :name, :artist
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_artist=(artist)
    @artist = artist
  end

  def artist=(artist )
    @artist = artist
    artist.add_song(self)
  end

  def artist_name
    @artist.name if !@artist.nil? 
  end
end

