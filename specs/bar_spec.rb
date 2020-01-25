require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bar")

class BarTest < Minitest::Test

def setup
 @bar = Bar.new(100)
end
