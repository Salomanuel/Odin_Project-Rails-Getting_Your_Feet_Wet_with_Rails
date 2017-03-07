class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
		@title = "Articles tagged with \"#{@tag.name}\""
	end
end
