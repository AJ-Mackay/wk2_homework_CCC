require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")
require_relative("../rooms")

class GuestsTest < Minitest::Test

def setup
  @guest1 = Guest.new("Paul", 20, "The Only Way Is Up")
  @guest2 = Guest.new("Colin", 25, "Moonlight Shadow")
  @guest3 = Guest.new("Andrew", 20, "Awoken")
end

def test_guest_has_a_name
  assert_equal("Paul", @guest1.name)
end

def test_guest_has_money
  assert_equal(25, @guest2.wallet)
end

def test_guest_has_favourite_song
  assert_equal("Awoken", @guest3.favourite_song)
end

def test_guest_pays_fees
  @guest1.remove_fees(10)
    assert_equal(10, @guest1.wallet)
  end

def test_favourite_song_is_playing
  result = @guest1.favourite_song_playing("The Only Way Is Up", @guest1)
  assert_equal("Whoo!", result)
end

end
