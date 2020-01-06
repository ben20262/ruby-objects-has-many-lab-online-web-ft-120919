class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize (name)
    @name = name
  end

  def add_song (song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name (song_name)
  end
end
