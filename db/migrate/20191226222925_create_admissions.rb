class CreateAdmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :admissions do |t|
      t.integer :book_id
      t.integer :provider_id
      t.integer :count
      t.date :date
      t.integer :price

      t.timestamps
    end

    add_foreign_key :admissions, :books, column: :book_id
    add_foreign_key :admissions, :providers, column: :provider_id
  end
end
