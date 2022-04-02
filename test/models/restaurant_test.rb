require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  def setup
    @restaurant = Restaurant.new(name: "St. Elmo's")
  end

  test 'Valid With Name' do
    assert @restaurant.valid?
  end

  test 'Invalid Without Name' do
    @restaurant.name = nil
    assert_not @restaurant.valid?
  end

  test 'Restaurants Can Have Menus' do
    mock = restaurants(:two)

    assert_not mock.menus.empty?
  end
end
