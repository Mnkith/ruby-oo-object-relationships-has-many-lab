
class Artist 

  # @@songs = []
  attr_accessor :name
  attr_reader :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.add_artist = self
  end
  # def songs
  #   self.class.songs
  # end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end

  def self.song_count
    Song.all.length
  end

end