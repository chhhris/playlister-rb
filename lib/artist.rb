class Artist
  attr_accessor :name, :songs
  All = []

  def initialize
    All << self
  end

  def songs_count
    @songs.count
  end

  def add_song(song)
    @songs ||= []
    @songs << song
    if song.genre
       if song.genre.artists.include?(self)
       else
          song.genre.artists << self
       end
    end
  end

  def genres
    @songs.collect do |song| 
      song.genre
    end
  end

### Class Methods ###

  def self.reset_artists
    All.clear
  end

  def self.count
    All.size
  end

  def self.all
    All
  end

end