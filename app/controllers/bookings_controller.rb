class BookingsController < ApplicationController

	def new
		if params[:num_tickets]

			@booking = Booking.new
			params[:num_tickets].to_i.times do |passenger|
				@booking.passengers.new
			end
		end
	end

	def create
		@booking = Booking.new(booking_params)
		# @flight = Flight.find(params[:flight_id])
		# @booking.flight_id = @flight.id 
		# @booking.passengers.each {|x| x.booking_id = @booking.id}

		if @booking.save
			redirect_to @booking 
		else
			render action: :new
		end
	end

	def show
		@booking = Booking.find(params[:id])
	end


	private
		def booking_params
			params.require(:booking).permit(:flight_id, :passenger_num,
					:passengers_attributes => [:name, :email])
		end



end
