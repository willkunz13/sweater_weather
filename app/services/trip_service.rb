class TripService

  def initialize(origin, destination)
		@origin = origin
		@destination = destination
  end

  def fetch_travel_time
    get_json[:routes].first[:legs].first[:duration]
  end

	def create_trip
		Trip.new(@origin, @destination, fetch_travel_time)
	end

  private

  def get_json
    response = conn
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.get("https://maps.googleapis.com/maps/api/directions/json?origin=#{@origin}&destination=#{@destination}&key=#{ENV['GOOGLE_API_KEY']}")
  end
end
