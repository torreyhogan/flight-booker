class Airport < ApplicationRecord
	# before_save uppercase_code
	has_many :departing_flights, foreign_key: :start_airport_id, class_name: "Flight"
	has_many :arriving_flights, foreign_key: :finish_airport_id, class_name: "Flight"


	def uppercase_code
		self.code.uppercase!
	end
end
