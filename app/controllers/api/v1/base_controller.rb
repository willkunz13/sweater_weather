class Api::V1::BaseController < ApplicationController

	before_action :require_api_key!

	def require_api_key!
		render status: 401 if User.where(api_key: params[:api_key]).empty?
	end
end
