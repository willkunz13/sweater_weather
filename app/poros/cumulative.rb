class Cumulative
	
	attr_accessor :image

	attr_reader :current, :hourly, :daily, :id

	def initialize(data)
		forecast = Forecast.new(data)
		@current = forecast.current
		@hourly = forecast.hourly
		@daily = forecast.daily
	end
end
