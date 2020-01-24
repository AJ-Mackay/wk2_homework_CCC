require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../songs")

class RoomsTest < Minitest::Test

def setup
 @room1 = Room.new(3, 3)
 @room2 = Room.new(0, 5)
 @room3 = Room.new(5, 7)
end

def test_room_has_guests
  assert_equal(3, @room1.number_of_guests)
end

def test_add_guests_to_room
  @room2.add_guests(1)
  assert_equal(1, @room2.number_of_guests)
end

def test_remove_guest_from_room
  @room3.remove_guests(1)
    assert_equal(4, @room3.number_of_guests)
end

def test_room_capacity
  @room1.add_guests(1)
  assert_equal(3, @room1.number_of_guests)
end

def test_play_song_in_room
@song1 = Song.new("The Orion Experience", "The Cult of Dionysus")
@room1.play_song(@song1)
  assert_equal("The Cult of Dionysus", @room1.song_playing)
end

end
