class AddPassengerNumToBookings < ActiveRecord::Migration[5.2]
  def change
  	add_column :bookings, :passenger_num, :integer
  end
end
