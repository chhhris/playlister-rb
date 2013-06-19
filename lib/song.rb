class Song
  attr_accessor :artists, :name

  def song
    @song
  end
  
  def song=(song)
    @song = song
  end

  def genre
    @genre
  end
  
  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

end

