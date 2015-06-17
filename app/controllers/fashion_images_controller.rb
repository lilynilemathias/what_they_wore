class FashionImagesController < ApplicationController

	def index
		query = params[:fashion_images][:query]
		tags = instagram_client.tag_search(query)
		@fashion_images = instagram_client.tag_recent_media(tags[0].name)
	end
end