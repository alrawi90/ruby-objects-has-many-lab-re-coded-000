class Artist
  attr_accessor :name
  @@song_count=0

def initialize(name)
   @name=name
   @songs=[]

end
def songs
  return @songs
end
def add_song(song)
  song.artist=self
  @songs.push(song)
  @@song_count +=1

end
def add_song_by_name(song_name)
song=Song.new(song_name)
song.artist=self
@songs.push(song)
@@song_count +=1
end
def self.song_count
  return @@song_count
end
end
