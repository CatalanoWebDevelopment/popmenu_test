class Item < ApplicationRecord
  has_many :links
  has_many :menus, through: :links

  validates :name, presence: true, uniqueness: true
end
