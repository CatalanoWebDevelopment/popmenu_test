class Menu < ApplicationRecord
    has_many :items, through :menus_items
    belongs_to :restaurant
end
