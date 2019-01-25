class PassengerMailer < ApplicationMailer

	def welcome_email
		@passenger = params[:passenger]
		@booking = @passenger.booking
		@flight = @booking.flight
		@url = 'http://example.com/login'
		mail(to: @passenger.email, subject: 'Flight booking')
	end
end
