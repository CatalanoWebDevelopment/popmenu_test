class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.decimal :price, precision: 10, scale: 2
      t.references :menu, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
