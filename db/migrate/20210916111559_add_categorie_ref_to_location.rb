class AddCategorieRefToLocation < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :categorie, foreign_key: true
  end
end
