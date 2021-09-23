class AddNbOfPeopleToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :Nb_of_people, :integer
  end
end
