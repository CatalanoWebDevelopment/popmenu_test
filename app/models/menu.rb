class Menu < ApplicationRecord
    has_many :items, through: :menus_item
    belongs_to :restaurant

    validates :name, presence: true
end
