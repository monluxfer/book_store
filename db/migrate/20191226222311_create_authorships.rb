class CreateAuthorships < ActiveRecord::Migration[6.0]
  def change
    create_table :authorships do |t|
      t.integer :author_id
      t.integer :book_id

      t.timestamps
    end

    add_foreign_key :authorships, :books, column: :book_id
    add_foreign_key :authorships, :authors, column: :author_id
  end
end
