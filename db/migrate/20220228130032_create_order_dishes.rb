class CreateOrderDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :order_dishes do |t|
      t.integer :quanlity
      t.integer :dish_id
      t.integer :order_id

      t.timestamps
    end
  end
end
