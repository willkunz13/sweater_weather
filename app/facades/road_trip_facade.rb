class RoadTripFacade

	def initialize(origin, destination)
		@origin = origin
		@destination = destination
	end

	def trip
		travel_time = TripService.new(@origin, @destination)
	  travel_time.create_trip
	end

	def destination_weather	
		weather_service = WeatherService.new(GeoService.new(@destination).fetch_latlong)
		weather_service.there_weather
	end

	def create_road_trip
		RoadTrip.new(trip, destination_weather)
	end
end
