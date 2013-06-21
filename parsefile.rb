require_relative 'lib/artist.rb'
require_relative 'lib/song.rb'
require_relative 'lib/genre.rb'


artist_list = []
song_list = []
genre_list = []

Dir.foreach('data') do |item|
    artist_name = item.split(" - ").first
    song_name   = item.split(" - ").last.split(" [").first
    genre_name  = item.split(" - ").last.split(" [").last.split("]").first
    filetype    = item.split(" - ").last.split(" [").last.split("].").last

    # print "Artist: #{artist}\n\t Song: #{song}\n\t\t Genre: #{genre}\n\t\t\t Filetype: #{filetype}"
    # puts
    # puts artist.inspect
    # puts song.inspect
    # puts genre.inspect
    # puts filetype.inspect
    # break if filetype == "mp3"
    
    
    if filetype = "mp3"

      # Instantiate new artist, song, and genre if they don't exist
      artist = add_artist(artist_name, artist_list)
      song   = add_song(song_name, song_list)
      genre  = add_genre(genre_name, genre_list)

      # Assign relationships:
      song.genre = genre
      artist.add_song(song)
      
    end
end


def add_artist(name, list)
  if list.include? name
    return Artist.all.select{|element| element.name == name}.first
  else
    list << name
    return Artist.new(name)
  end
end

def add_song(name, list)
  if list.include? name
    return Song.all.select{|element| element.name == name}.first
  else
    list << name
    return Song.new(name)
  end
end

def add_genre(name, list)
  if list.include? name
    return Genre.all.select{|element| element.name == name}.first
  else
    list << name
    return Genre.new(name)
  end
end