class CreateMenusItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menus_items do |t|
      t.decimal :price, precision: 10, scale: 2
      t.belongs_to :menu
      t.belongs_to :item

      t.timestamps
    end
  end
end
