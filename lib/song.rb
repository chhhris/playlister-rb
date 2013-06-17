class Song
  attr_accessor :genre, :artists

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