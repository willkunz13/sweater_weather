class ImageService

	def initialize(location)
		@location = location + ' town'
	end

	def response
		answer = get_json[:results].first[:urls][:raw]
	end

	private

	def get_json
    response = conn.get("/search/photos?query=#{@location}&client_id=#{ENV['IMAGE_API_KEY']}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.unsplash.com") do |f|
      f.adapter Faraday.default_adapter
    end
  end
end
