class FlightsController < ApplicationController

	def index
		@airport_options = Airport.all.map{ |airport| [airport.code, airport.id]}
		@available_dates = uniq_flight_dates
		if params[:start_airport_id]
			flight_airport = Flight.where(start_airport_id: params[:start_airport_id], finish_airport_id: params[:finish_airport_id])
			@flights = flight_airport.select{|x| date_formatted(x.start_time) == params[:start_time]}
		end
	end

	#returns array of all unique flight dates
	def uniq_flight_dates
		flight_dates = Flight.all.map{ |flight| flight.start_time.strftime("%m/%d/%Y") }
		flight_dates.uniq.sort
	end

	def date_formatted(event_date)
		event_date.strftime("%m/%d/%Y")
	end

	private

		def search_params
			params.require(:flights).permit(:start_airport_id, :finish_airport_id, :start_time)
		end
end
