class Menu < ApplicationRecord
  has_many :links
  has_many :items, through: :links
end
