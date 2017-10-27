require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new
  end

  def test_name_change
    @rocket.name = "Bird"
    result = @rocket.name
    expected = "Bird"
    assert_equal(expected, result)
  end
end
