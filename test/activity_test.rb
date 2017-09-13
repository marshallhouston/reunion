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

  def test_it_can_find_average_cost_of_activity
    activity = Activity.new("fishing", {'Steve' => 25, 'Alejandra' => 24, 'Amy' => 26})
    assert_equal 25, activity.cost_per_person
  end

  def test_it_can_find_out_how_much_each_person_owes
    activity = Activity.new("fishing", {'Steve' => 25, 'Alejandra' => 24, 'Amy' => 26})

    assert_equal -1, activity.amount_owed('Amy')
    assert_equal 1, activity.amount_owed('Alejandra')
    assert_equal 0, activity.amount_owed('Steve')
  end

end
