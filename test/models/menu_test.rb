require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  def setup
    @menu = menus(:two)
  end

  test 'Can Contain Multiple Menu Items' do
    assert_equal 2, @menu.items.size
  end

  test 'Can Be Associated To a Restaurant' do
    assert @menu.restaurant.valid?
  end
end
