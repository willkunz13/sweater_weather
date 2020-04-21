class ArrivalForecast

	attr_reader :temp, :description
	
	def initialize(temp, description)
		@temp = temp
		@description = description
	end
end
