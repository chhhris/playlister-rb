class Genre
  attr_accessor :name
  All = []

  def initialize
    All << self
  end

  def songs
    @songs ||= []
  end

  def artists
    @artists ||= []
  end

### Class Methods ###

  def self.reset_genres
    All.clear
  end

  def self.count
    All.size
  end

  def self.all
    All
  end

end

