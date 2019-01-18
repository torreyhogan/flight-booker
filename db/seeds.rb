# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

airport_codes = ["ABQ", "AMA", "ANC", "ATL", "AUS", "BFI", "BGR", "BIL", "BOS"]#, "CMH", "CPR", "DEN", "DFW", "DLH", "ELP", "EWR", "FAI", "GTF", "HNL", "IAD", "IND", "JFK", "LAS", "LAX", "LBB", "LCK", "LMT", "MCI", "MCO", "MIA", "MLB", "MSP", "ONT", "ORD", "PDX", "PHL", "PHX", "SEA", "SFO", "SJC", "SLC", "STL", "SWF", "TPA", "YUM"]

airport_codes.each do |airport_code|
	Airport.create(code:airport_code)
end

100.times do
	start_airport = rand(0..(airport_codes.length - 1))
	finish_airport = rand(0..(airport_codes.length - 1))
	while start_airport == finish_airport
		finish_airport = rand(0..(airport_codes.length - 1))
	end
	Flight.create(
		start_airport_id: start_airport,
		finish_airport_id: finish_airport,
		start_time: Faker::Time.between(DateTime.now, DateTime.now + 10),
		flight_duration: (rand(0..12).hour + rand(0..59).minute)
		)
end