class ChangeDurationTypeFromTimeToString < ActiveRecord::Migration[5.2]
  def change
  	change_column :flights, :flight_duration, :string 
  end
end
