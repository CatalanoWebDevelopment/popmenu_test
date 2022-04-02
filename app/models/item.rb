class Item < ApplicationRecord
  has_many :menus_item
  has_many :menus, through: :menus_item

  validates :name, presence: true, uniqueness: true
end
