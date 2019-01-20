class Flight < ApplicationRecord
	belongs_to :start_airport, class_name: "Airport"
	belongs_to :finish_airport, class_name: "Airport"

	has_many :bookings#, foreign_key: :flight_id
	has_many :passengers, through: :bookings, source: :passenger#, class_name: "Passenger"

	def start_date_formatted
		self.start_time.strftime("%m/%d/%Y")
	end

end
