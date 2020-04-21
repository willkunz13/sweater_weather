class WeatherService

	def initialize(location)
		@lat = location[:lat]
		@lon = location[:lng]
	end

	def response
		Cumulative.new(get_json)
	end

	def there_weather
		weather = get_json
		temp = weather[:current][:temp]
		summary = weather[:current][:weather].first[:description]
		ArrivalForecast.new(temp, summary)
	end

	private

	def get_json
    response = conn.get("/data/2.5/onecall?lat=#{@lat}&lon=#{@lon}&units=imperial&appid=#{ENV['WEATHER_API_KEY']}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.openweathermap.org') do |f|
      f.adapter Faraday.default_adapter
    end
  end
end
