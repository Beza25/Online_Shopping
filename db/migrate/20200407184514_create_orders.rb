class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.integer :product_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
