class Current
	attr_reader :dt, :weather, :temp, :feels_like, :humidity, :visibility, :uvi, :sunrise, :sunset, :high, :low

	def initialize(data)
		@dt = data[:current][:dt]; @weather = data[:current][:weather]; @temp = data[:current][:temp]; @feels_like = data[:current][:feels_like]; @humidity = data[:current][:humidity]; @visibility = data[:current][:visibility]; @uvi = data[:current][:uvi]; @sunrise = data[:current][:sunrise]; @sunset = data[:current][:sunset]; @high = data[:current][:high]; @low = data[:current][:low]
		@high = data[:daily].first[:temp][:max]
		@low = data[:daily].first[:temp][:min]
	end
end
