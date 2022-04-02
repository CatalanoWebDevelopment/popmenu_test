require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  def setup
    @item = Item.new(name: 'Steak')
    @menu = Menu.new(name: 'Dinner')
    @link = Link.new(price: 34.99, menu: @menu, item: @item)
  end

  test 'Is Invalid Without Price' do
    @link.price = nil
    assert_not @link.valid?
  end

  test 'Is Valid With Price' do
    assert @link.valid?
  end

  test 'Can Associate an Item to a Menu' do
    @link.item = @item
    @link.menu = @menu

    assert @link.valid?
  end
end
