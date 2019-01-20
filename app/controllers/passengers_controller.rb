class PassengersController < ApplicationController

	def create
		@passenger = Passenger.create(passenger_params)

		# redirect_to bookings_new_path
	end


	private
		def passenger_params
			params.require(:passenger).permit(:name, :email)
		end
end
