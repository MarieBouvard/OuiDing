class AddLocationRefToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :location, foreign_key: true
  end
end
