class ArticlesController < ApplicationController
	include ArticlesHelper
	def index
		@title    = "All Articles"
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
		@title   = @article.title
	end

	def new
		@title   = "New Article"
		@article = Article.new
	end

	def create
		@article       = Article.new(article_params)
		@article.save
		redirect_to article_path(@article)
	end
end