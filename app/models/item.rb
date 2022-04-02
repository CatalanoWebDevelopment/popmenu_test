class Item < ApplicationRecord
  has_many :links
  has_many :menus, through: :links
end
