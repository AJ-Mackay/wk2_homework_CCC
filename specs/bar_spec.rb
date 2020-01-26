require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bar")
require_relative("../guests")

class BarTest < Minitest::Test

def setup
 @bar = Bar.new(100)
end

def test_bar_has_cash
  assert_equal(100, @bar.till)
end

def test_money_from_guest_to_till
  @guest1 = Guest.new("Paul", 20, "The Only Way Is Up")
  @bar.from_guest_to_till(@guest1, 10)
  assert_equal(110, @bar.till)
end

end
