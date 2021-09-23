class RemoveNbOfPeopleFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :Nb_of_people, :integer
  end
end
