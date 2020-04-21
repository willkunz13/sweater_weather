class Api::V1::WeatherController < ApplicationController

	def show
		picture = FetchImageJob.perform_now(params[:location])
		location_service = GeoService.new(params[:location])
		weather_service = WeatherService.new(location_service.fetch_latlong)
		message = weather_service.response
		message.image = picture
		render json: ForecastSerializer.new(message)
	end
end
