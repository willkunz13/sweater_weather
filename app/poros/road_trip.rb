class RoadTrip

	attr_reader :id, :trip, :destination_weather

	def initialize(trip, destination_weather)
		@trip = trip
		@destination_weather = destination_weather
	end
end
