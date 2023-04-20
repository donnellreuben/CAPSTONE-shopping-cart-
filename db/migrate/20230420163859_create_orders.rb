class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :total

      t.timestamps
    end
  end
end
