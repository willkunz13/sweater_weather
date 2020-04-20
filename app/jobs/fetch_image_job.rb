class FetchImageJob < ApplicationJob
  queue_as :default

  def perform(location)
		image_service = ImageService.new(location)
		image_service.response
  end
end
