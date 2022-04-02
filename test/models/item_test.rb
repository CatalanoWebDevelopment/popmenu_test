require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  def setup
    @reference = items(:one)
    @item = Item.create(name: 'Test')
  end

  test 'Invalid Without Name' do
    @item.name = nil
    assert_not @item.valid?
  end

  test 'Valid With Name' do
    @item.name = 'Steak'
    assert @item.valid?
  end

  test 'Restricts Duplicates' do
    duplicate_item = @item.dup
    assert_not duplicate_item.valid?
  end

  test 'Associations' do
    assert_equal 2, @reference.menus_item.size
  end
end
