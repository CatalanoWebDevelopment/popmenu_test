class Menu < ApplicationRecord
  has_many :links
  has_many :items, through: :links
  belongs_to :restaurant

  validates :name, presence: true
end
