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

  def test_land
    @rocket.lift_off
    @rocket.land
    result = @rocket.flying?
    expected = false
    assert_equal(expected, result)
  end

  def test_ready_for_lift_off
    result = @rocket.status
    expected = "Rocket #{@rocket.name} is ready for lift off!"
    assert_equal(expected, result)
  end

  def test_rocket_is_in_the_air
    @rocket.lift_off
    result = @rocket.status
    expected = "Rocket #{@rocket.name} is flying through the sky!"
    assert_equal(expected, result)
  end
end
