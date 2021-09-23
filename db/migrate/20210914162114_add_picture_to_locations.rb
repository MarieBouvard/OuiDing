class AddPictureToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :picture, :string
  end
end
