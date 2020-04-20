class Hourly

	attr_reader :dt, :weather, :temp	

	def initialize(data)
		@dt = data[:dt]
		@weather = data[:weather]
		@temp = data[:temp]
	end
end
