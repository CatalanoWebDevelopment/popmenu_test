class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :links
  has_many :items, through: :links

  validates :name, presence: true
end
