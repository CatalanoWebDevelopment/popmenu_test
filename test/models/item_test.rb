require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  def setup
    @item = Item.create(name: 'Steak')
  end

  test 'Valid With Name' do
    assert @item.valid?
  end

  test 'Invalid Without Name' do
    @item.name = nil
    assert_not @item.valid?
  end

  test 'Restricts Duplicates' do
    duplicated_item = @item.dup
    assert_not duplicated_item.valid?
  end
end
