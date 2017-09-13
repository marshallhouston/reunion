# Add to the existing Activity class so that it supports the following functionality.
#
# * An Activity has a name
# * An Activity has participants
#   * participants are represented with a hash and have a name and an amount they've paid for that activity
# * You can get the total cost of an activity

require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_it_has_a_name
    activity = Activity.new("fishing", {'Steve' => 25})

    assert_equal "fishing", activity.name
  end

  def test_it_can_have_participants
    activity = Activity.new("fishing", {'Steve' => 25, 'Alejandra' => 24, 'Amy' => 26})

    assert_equal 3, activity.participants.count
  end

  def test_it_can_calculate_total_cost
    activity = Activity.new("fishing", {'Steve' => 25, 'Alejandra' => 24, 'Amy' => 26})

    assert_equal 75, activity.total_cost
  end

end
