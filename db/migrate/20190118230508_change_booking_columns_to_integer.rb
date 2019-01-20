class ChangeBookingColumnsToInteger < ActiveRecord::Migration[5.2]
  def change
  	change_column :bookings, :passenger_id, :integer
  	change_column :bookings, :flight_id, :integer
  end
end
