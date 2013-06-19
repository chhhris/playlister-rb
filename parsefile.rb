load 'lib/artist.rb'
load 'lib/song.rb'
load 'lib/genre.rb'

# Load all mp3 files

files = Dir['data/*.mp3']

jukebox_array = files.map do |parser|
  artist = parser.gsub(/data\//,'').split(" -")[0]
  song = parser.split(" - ")[1].split(" [")[0]
  genre = parser.split(" -")[1].split(" [")[1].split("]")[0]
  {artist: artist, song: song, genre: genre}
end

jukebox_array.collect do |array_from_jukebox|

  artist = array_from_jukebox[:artist]
  genre = array_from_jukebox[:genre]
  song = array_from_jukebox[:song]

  
  if Artist.all.include?(artist)
    song = Song.new
    artist.add_song(song)
    
    unless Genre.all.include?(genre)
        genre = Genre.new
        artist.genres.include(song.genre)
        song.genre = genre
    end
  
  else artist = Artist.new
    artist.name = artist
    song = Song.new
    artist.add_song(song)
    unless Genre.all.include?(genre)
        genre = Genre.new
    end

  end
end

puts Artist.all
