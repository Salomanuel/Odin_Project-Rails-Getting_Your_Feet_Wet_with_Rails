class TagsController < ApplicationController
	def show
		@tag   = Tag.find(params[:id])
		@title = "Articles tagged with \"#{@tag.name}\""
	end

	def index
		@title = "Tags List"
		@tags  = Tag.all
	end
end
