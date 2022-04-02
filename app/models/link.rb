class Link < ApplicationRecord
  belongs_to :menu
  belongs_to :item

  validates :price, presence: true
end
