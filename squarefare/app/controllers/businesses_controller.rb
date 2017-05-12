class BusinessesController < ApplicationController

	before_action :authenticate_user!, only: [:create, :new]
	def index

	end

	def new
		@business = Business.new
		
	end

	def create
		@business = Business.new(business_params)
		if @business.save
		redirect_to @business
		else
			flash[:danger] = @business.errors.full_messages.to_sentence
			render 'new'
		end
	end

	def show
		@business = Business.find(params[:id])
		@posts = Post.where(business_id: @business)
		if @posts.blank?
			@avg_rating = 0
		else
			@avg_rating = @posts.average(:rating).round(2)
		end
	end

	def search
		category_id = params[:category]
		query = params[:search]

		@businesses = Business.search(category_id, query)
	end


	private
		def business_params
			params.require(:business).permit(:name, :description, :address, :category_id, :phone, :email, 
											 :website_url, :img_url, :menu_url, :logo_url, :latitude, :longitude, :twitter_url)




		end


end


