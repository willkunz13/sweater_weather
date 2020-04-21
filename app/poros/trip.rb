class Trip

	attr_reader :origin, :destination, :travel_time

	def initialize(origin, destination, travel_time)
		@origin = origin
		@destination = destination
		@travel_time = travel_time[:text]
	end
end
