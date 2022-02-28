class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :price
      t.text :content
      t.integer :category_id

      t.timestamps
    end
  end
end
