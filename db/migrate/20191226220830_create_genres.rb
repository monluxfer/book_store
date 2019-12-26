class CreateGenres < ActiveRecord::Migration[6.0]
  def change


    create_table :genres do |t|
      t.string :title

      t.timestamps
    end

    add_foreign_key :book_genres, :books, column: :book_id
    add_foreign_key :book_genres, :genres, column: :genre_id

  end
end
