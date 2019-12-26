class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :book_id
      t.integer :customer_id
      t.integer :count
      t.integer :price
      t.date :date

      t.timestamps
    end

    add_foreign_key :orders, :books, column: :book_id
    add_foreign_key :orders, :customers, column: :customer_id
  end
end
