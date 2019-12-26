class CreateEditions < ActiveRecord::Migration[6.0]
  def change

    create_table :editions do |t|
      t.integer :publishing_id
      t.integer :book_id
      t.date :date
      t.integer :number

      t.timestamps
    end

    add_foreign_key :editions, :books, column: :book_id
    add_foreign_key :editions, :publishings, column: :publishing_id

  end
end
