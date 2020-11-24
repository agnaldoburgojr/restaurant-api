class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.text :products
      t.float :total
      t.string :payment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
