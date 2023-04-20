class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :status
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :total
      t.integer :quantity

      t.timestamps
    end
  end
end
