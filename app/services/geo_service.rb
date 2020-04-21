class GeoService

	def initialize(location)
		@location = location
	end	

	def fetch_latlong
		get_json[:results].first[:geometry][:location]
	end

	private

  def get_json
    response = conn
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
		Faraday.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{@location}&key=#{ENV['GOOGLE_API_KEY']}")
  end
end
