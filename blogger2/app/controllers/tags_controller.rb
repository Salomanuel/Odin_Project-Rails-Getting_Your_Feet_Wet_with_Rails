class TagsController < ApplicationController
	def show
		@tag   = Tag.find(params[:id])
		@title = "Articles tagged with \"#{@tag.name}\""
	end

	def index
		@title = "Tags List"
		@tags  = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		flash.notice = "tag '#{@tag.name}' obliterated"
		redirect_to tags_path
	end
end
