require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test 'Invalid Without Name' do
    item = Item.new
    assert_not item.valid?
  end
end
