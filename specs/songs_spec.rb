require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../songs")

class SongsTest < Minitest::Test

def setup
 @song1 = Song.new("The Orion Experience", "The Cult of Dionysus")
 @song2 = Song.new("Joy Division", "Love Will Tear Us Apart")
 @song3 = Song.new("DNCE", "Cake By The Ocean")

@songs = [@song1, @song2, @song3]
end

def test_song_has_a_title
  assert_equal("The Cult of Dionysus", @song1.title)
end

def test_song_has_an_artist
  assert_equal("Joy Division", @song2.artist)
end

end
