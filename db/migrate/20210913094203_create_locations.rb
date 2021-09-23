class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :city
      t.integer :rooms
      t.integer :superficy
      t.decimal :price

      t.timestamps
    end
  end
end
