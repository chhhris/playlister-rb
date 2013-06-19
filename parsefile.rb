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


























# artist = []
# song = []
# genre = []

# files.each do |parser| 
#     artist << parser.split(" -")[0]
#     song << parser.split(" - ")[1].split(" [")[0]
#     genre << parser.split(" -")[1].split(" [")[1].split("]")[0]
# end

# [{:artist => "blake", :song_name => "blakes the man", :genre => "computer nerd rap"}]


# ############################################################
# ## Psuedo code ## send arrays above into New Hash

# # the files are parsed so that each file is placed into a hash

# # hha = Hash.new{|hash, key| hash[key] = Hash.new{|hash, key| hash[key] = Array.new}}
# # Hash.new{|hash, key| hash[key] = Array.new}
# jukebox_array = []
# mp3 = Hash.new
# files.each do |parser|
#     mp3[:artist] ||= parser.split(" -")[0]
#     mp3[:song] ||= parser.split(" - ")[1].split(" [")[0]
#     mp3[:genre] ||= parser.split(" -")[1].split(" [")[1].split("]")[0]
#       # the above actions result in a hash that looks like this:
#       # hash.new {:artist => artist, :song => song, :genre => genre}
#       # every file is put into a new hash
#       # all of the hashes are then placed into an array
#         # jukebox_array = []
#         # jukebox_array << hash{}
#       jukebox_array.push(mp3)
# end


# ## Psuedo code ## parse Hash to instantiate Artist, Song, Genre
# jukebox_array.each do |send_value_to|
#   send_value_to[1] = Artist.new
#   send_value_to[2] = Song.new
#   send_value_to[3] = Genre.new
# end 


# # Create connections between Artist & Song, Song & Genre, and Genre & Artist.

# # Step 4:
# # Test throughout to ensure code is working



# # Instantiate the artist  #=> 
#                               artist = Artist.new
# # Give artist a name      #=> 
#                               artist.name = "Adele"
# # An artist has songs     #=> 
#                               artist.songs = []
# # An artist has genres    #=> 
#                               song.genre = Genre.new.tap{|g| g.name = "rap"}
#                               artist.add_song(song)
#                               artist.genres.include?(song.genre)

# # Instantiate the song    #=> 
#                               song = Song.new
# # Songs a name            #=> artist.name = "Adele"
# # Songs have an artist    #=> artist.songs.include?(song)
# # Songs have a Genre      #=> song.genre = genre

# # Instantiate the Genre   #=> Genre.new
# # Give genres a name      #=> genre.name = 'rap'
# # Genres have Songs       #=> song.genre = genre / genre.songs
# # Genres have artists(?)  #=> genre.artists


# ######################################
# ## Questions

# # Do I (a) move all three into a hash?
#   # And then in the next step parse the hash to relate those values into 
#   # the plugs at left?
#     # PROS: keep the code byte-sized e.g. have 1 method to pull files
#     # and split into arrays, 

# # Or (b) as part of the files-parser-loop should I instantiate
#     # the three elements into the jukebox?
#     # PROS am I creating too much extra work by taking a perfectly usable format
#     # and then putting it into a hash only to unpack them again??

# ######################################
# ## Parse the mp3 file names

# # artist = []
# # song = []
# # genre = []

# # file_array = ["A$AP Rocky - Peso [dance].mp3", "Adele - Rolling In the Deep [folk].mp3"]
# # file_array.each do |parser|

# #     artist << parser.split(" -")[0]
# #     song << parser.split(" -")[1].split(" [")[0]
# #     genre << parser.split(" -")[1].split(" [")[1].split("]")[0]
# #       # puts artist
# #       # puts song
# #       # puts genre
# # end

# # artist
# # song
# # genre

