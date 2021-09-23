class RemoveEndFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :end, :datetime
  end
end
