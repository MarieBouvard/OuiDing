class AddCategorieRefToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :categorie, foreign_key: true
  end
end
