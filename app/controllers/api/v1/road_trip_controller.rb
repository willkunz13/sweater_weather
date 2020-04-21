class Api::V1::RoadTripController < Api::V1::BaseController 
	
	def create
		roadtrip = RoadTripFacade.new(params[:origin], params[:destination])
		render json: RoadTripSerializer.new(roadtrip.create_road_trip)
	end
end
