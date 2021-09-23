class AddEndsToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :ends, :datetime
  end
end
