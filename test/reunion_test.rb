require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test

  def test_it_has_a_location_and_activities
    reunion = Reunion.new("Denver", "fishing")

    assert_equal "Denver", reunion.location
    assert_equal "fishing", reunion.activity.name
  end
end
