class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :title
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
