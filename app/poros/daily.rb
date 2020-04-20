class Daily
	
	attr_reader :dt, :weather, :rain, :high, :low

	def initialize(data)
		@dt = data[:dt]
		@weather = data[:weather]
		@rain = data[:rain]
		@high = data[:temp][:max]
		@low = data[:temp][:min]
	end
end
