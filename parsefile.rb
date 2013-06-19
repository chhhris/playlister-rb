load 'lib/artist.rb'
load 'lib/song.rb'
load 'lib/genre.rb'

# Load all mp3 files

files = Dir['data/*.mp3']

jukebox_array = files.map do |parser|
  artist = parser.split(" -")[0]
  song = parser.split(" - ")[1].split(" [")[0]
  genre = parser.split(" -")[1].split(" [")[1].split("]")[0]
  {artist: artist, song: song, genre: genre}
end

p jukebox_array

p jukebox_array[0]