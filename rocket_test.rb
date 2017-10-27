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

  def test_colour_change
    @rocket.name = "brown"
    result = @rocket.name
    expected = "brown"
    assert_equal(expected, result)
  end

  def test_flying_false
    result = @rocket.flying?
    expected = false
    assert_equal(expected, result)
  end

  def test_lift_off
    @rocket.lift_off
    result = @rocket.flying?
    expected = true
    assert_equal(expected, result)
  end
end
