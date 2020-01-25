class Music
  attr_reader :songs

  def initialize(songs)
    @songs = songs
  end

  def get_song_titles
  song_titles = []
    for song in @songs
      song_titles << song.title
    end
    return song_titles
  end

end
