require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../songs")
require_relative("../music")

class SongsTest < Minitest::Test

def setup
 @song1 = Song.new("The Orion Experience", "The Cult of Dionysus")
 @song2 = Song.new("Joy Division", "Love Will Tear Us Apart")
 @song3 = Song.new("DNCE", "Cake By The Ocean")
 @song4 = Song.new("Yazz", "The Only Way Is Up")
 @song5 = Song.new("Circrush", "Echo")

@songs = [@song1, @song2, @song3, @song4, @song5]
@music = Music.new(@songs)
end

def test_song_has_a_title
  assert_equal("The Cult of Dionysus", @song1.title)
end

def test_song_has_an_artist
  assert_equal("Joy Division", @song2.artist)
end

def test_song_array
  result = @music.get_song_titles
  assert_equal(["The Cult of Dionysus", "Love Will Tear Us Apart", "Cake By The Ocean", "The Only Way Is Up", "Echo"], result)
end

end
